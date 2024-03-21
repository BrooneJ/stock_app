import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stock_app/data/repository/stock_repository_impl.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  test("view model test", () async {
    await Hive.initFlutter();
    Hive.registerAdapter(CompanyListingEntityAdapter());

    await dotenv.load(fileName: ".env");

    final api = StockApi();
    final dao = StockDao();
    final viewModel = CompanyListingsViewModel(StockRepositoryImpl(api, dao));

    await Future.delayed(const Duration(seconds: 3));

    expect(viewModel.state.companies.isNotEmpty, true);
  });
}
