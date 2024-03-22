import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stock_app/data/source/remote/dto/company_info_dto.dart';
import 'package:stock_app/domain/model/company_info.dart';

class StockApi {
  static const String baseUrl = 'https://www.alphavantage.co';
  final apiKey = dotenv.env['APIKEY'];

  final http.Client _client;

  StockApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getListings({String? apikey}) async {
    final apikey = apiKey ?? "";
    return await _client.get(
      Uri.parse(
        '$baseUrl/query?function=LISTING_STATUS&apikey=$apikey',
      ),
    );
  }

  Future<CompanyInfoDto> getCompanyInfo({
    required String symbol,
    String? apikey,
  }) async {
    final apikey = apiKey ?? "";
    final response = await _client.get(
      Uri.parse(
        '$baseUrl/query?function=OVERVIEW&symbol=$symbol&apikey=$apikey',
      ),
    );

    return CompanyInfoDto.fromJson(jsonDecode(response.body));
  }

  Future<http.Response> getIntradayInfo({
    required String symbol,
    String? apikey,
  }) async {
    return await _client.get(
      Uri.parse(
        '$baseUrl/query?function=TIME_SERIES_INTRADAY&symbol=$symbol&interval=60min&apikey=$apikey&datatype=csv',
      ),
    );
  }
}
