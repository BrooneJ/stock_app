import 'package:hive/hive.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';

class StockDao {
  static const companyListing = 'companyListings';

  Future<void> insertCompanyListings(
      List<CompanyListingEntity> companyListingEntities) async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db');
    await box.addAll(companyListingEntities);
  }

  Future clearCompanyListings() async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db');
    await box.clear();
  }

  Future<List<CompanyListingEntity>> searchCompanyListings(String query) async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db');
    final List<CompanyListingEntity> result = box.values.toList();
    return result
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()) ||
            element.symbol.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
