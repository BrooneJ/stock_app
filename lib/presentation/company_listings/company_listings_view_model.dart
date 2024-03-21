import 'package:flutter/material.dart';
import 'package:stock_app/domain/model/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_listings/company_listings_state.dart';

class CompanyListingsViewModel with ChangeNotifier {
  final StockRepository _respository;

  var _state = CompanyListingsState();

  CompanyListingsState get state => _state;

  CompanyListingsViewModel(this._respository) {
    _getCompanyListings();
  }

  Future _getCompanyListings({
    bool fetchFromRemote = false,
    String query = '',
  }) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result =
        await _respository.getCompanyListings(fetchFromRemote, query);

    result.when(success: (listings) {
      _state = state.copyWith(
        companies: listings,
      );
    }, error: (message) {
      print(message);
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
