import 'package:flutter/material.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_info/company_info_state.dart';

class CompanyInfoViewModel with ChangeNotifier {
  final StockRepository _repository;

  var _state = CompanyInfoState();

  CompanyInfoState get state => _state;

  CompanyInfoViewModel(this._repository, String symbol) {
    loadCompanyInfo(symbol);
  }

  Future loadCompanyInfo(String symbol) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCompanyInfo(symbol);

    result.when(success: (companyInfo) {
      _state = state.copyWith(
        companyInfo: companyInfo,
        isLoading: false,
        errorMessage: null,
      );
    }, error: (message) {
      _state = state.copyWith(
        isLoading: false,
        companyInfo: null,
        errorMessage: message,
      );
    });

    notifyListeners();

    final intradayInfo = await _repository.getIntradayInfo(symbol);
    intradayInfo.when(
      success: (infos) {
        _state = state.copyWith(
          stockInfos: infos,
          isLoading: false,
          errorMessage: null,
        );
      },
      error: (message) {
        _state = state.copyWith(
          stockInfos: [],
          isLoading: false,
          errorMessage: message,
        );
      },
    );
  }
}
