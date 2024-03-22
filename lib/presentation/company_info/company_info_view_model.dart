import 'package:flutter/material.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_info/company_info_state.dart';

class CompanyInfoViewModel with ChangeNotifier {
  final StockRepository _respository;

  var _state = CompanyInfoState();

  CompanyInfoState get state => _state;

  CompanyInfoViewModel(this._respository);

  Future loadCompanyInfo(String symbol) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _respository.getCompanyInfo(symbol);

    result.when(success: (companyInfo) {
      _state = state.copyWith(companyInfo: companyInfo, isLoading: false);
    }, error: (message) {
      _state = state.copyWith(isLoading: false, companyInfo: null);
    });

    notifyListeners();
  }
}
