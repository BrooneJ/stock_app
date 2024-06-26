import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/csv/intraday_info_parser.dart';
import 'package:stock_app/data/mapper/company_mapper.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/domain/model/company_listing.dart';
import 'package:stock_app/domain/model/intraday_info.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/util/result.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _stockApi;
  final StockDao _stockDao;
  final _companyListingsParser = CompanyListingsParser();
  final _intradayInfoParser = IntradayInfoParser();

  StockRepositoryImpl(this._stockApi, this._stockDao);

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(
    bool fetchFromRemote,
    String query,
  ) async {
    // search into local database
    final localListings = await _stockDao.searchCompanyListings(query);

    // if not found, search into remote database
    final isDbEmpty = localListings.isEmpty && query.isEmpty;
    final shouldJustLoadFromCache = !isDbEmpty && !fetchFromRemote;

    // if found, return the result
    if (shouldJustLoadFromCache) {
      return Result.success(
        localListings.map((e) => e.toCompanyListing()).toList(),
      );
    }

    // if not found, fetch from remote
    try {
      final response = await _stockApi.getListings();
      final parsedListings = await _companyListingsParser.parse(response.body);

      // clear local database
      await _stockDao.clearCompanyListings();

      // save to local database
      await _stockDao.insertCompanyListings(
        parsedListings.map((e) => e.toCompanyListingEntity()).toList(),
      );

      return Result.success(parsedListings);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) async {
    try {
      final dto = await _stockApi.getCompanyInfo(symbol: symbol);
      return Result.success(dto.toCompanyInfo());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<IntradayInfo>>> getIntradayInfo(String symbol) async {
    try {
      final response = await _stockApi.getIntradayInfo(symbol: symbol);
      final results = await _intradayInfoParser.parse(response.body);
      return Result.success(results);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
