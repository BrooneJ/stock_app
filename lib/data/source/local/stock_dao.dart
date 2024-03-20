import 'package:hive/hive.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';

class StockDao {
  static const companyListing = 'companyListings';
  final box = Hive.box('stock.db');

  Future<void> insertCompanyListings(
      List<CompanyListingEntity> companyListingEntity) async {
    await box.put(companyListing, companyListingEntity);
  }

  Future clearCompanyListings() async {
    await box.clear();
  }

  Future<List<CompanyListingEntity>> searchCompanyListings(String query) async {
    final List<CompanyListingEntity> result =
        box.get(companyListing, defaultValue: []);
    return result
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()) ||
            element.symbol.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
