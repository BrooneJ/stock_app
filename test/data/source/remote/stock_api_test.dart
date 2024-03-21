import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  test('network test', () async {
    final response = await StockApi().getListings();

    final parser = CompanyListingsParser();
    final remoteListings = await parser.parse(response.body);

    expect(remoteListings[0].symbol, "A");
  });
}
