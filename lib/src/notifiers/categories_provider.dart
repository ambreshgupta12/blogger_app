import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:blogger_app/src/constants/enums.dart';


class CategoriesProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();
  Status _status=Status.ideal;

  String _categoriesError = '';
  CategoriesResponse? _categoriesResponse;

  CategoriesResponse get categoriesResponse => _categoriesResponse!;

  set categoriesResponse(CategoriesResponse value) {
    _categoriesResponse = value;
    notifyListeners();
  }


  Status get status => _status;

  set status(Status value) {
    _status = value;
    notifyListeners();
  }

  String get categoriesError => _categoriesError;

  set categoriesError(String value) {
    _categoriesError = value;
    notifyListeners();
  }

  // call api

  void getCategoriesList() async {

    status=Status.loading;
    var response = await _appRepository.getCategoriesList();
    if (response is CategoriesResponse) {
      status=Status.loaded;
      categoriesResponse = response;
      print("categoriesResponse:${response.toJson()}");
    } else if (response is String) {
      status=Status.loaded;
      categoriesError = response;
      print("Error:${response}");
    }
  }
}
