import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listings_action.freezed.dart';

@freezed
class CompanyListingsAction with _$CompanyListingsAction {
  factory CompanyListingsAction.refresh() = _Refresh;
  factory CompanyListingsAction.onSearchQueryChange(String query) =
      _OnSearchQueryChange;
}
