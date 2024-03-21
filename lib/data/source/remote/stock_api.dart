import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class StockApi {
  static const String baseUrl = 'https://www.alphavantage.co/';
  final apiKey = dotenv.env['APIKEY'];

  final http.Client client;

  StockApi({required this.client});

  Future<http.Response> getListings({String? apikey}) async {
    final apikey = apiKey ?? "";
    return await client.get(
      Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=$apikey',
      ),
    );
  }
}
