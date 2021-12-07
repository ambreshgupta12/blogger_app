import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:blogger_app/src/constants/enums.dart';


class CategoriesProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();
  Status _status=Status.ideal;

  List<Result> result=[];
  List<Result> _resultFilter=[];


  List<Result> get resultFilter => _resultFilter;
  set resultFilter(List<Result> value) {
    _resultFilter = value;
    notifyListeners();
  }


  String _categoriesError = '';
  CategoriesResponse _categoriesResponse=CategoriesResponse();

  CategoriesResponse get categoriesResponse => _categoriesResponse;

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

  Future getCategoriesList() async {

    status=Status.loading;
    var response = await _appRepository.getCategoriesList();
    if (response is CategoriesResponse) {
      status=Status.loaded;
      _categoriesResponse = response;
      result.addAll(_categoriesResponse.result!);
    } else if (response is String) {
      status=Status.loaded;
      _categoriesError = response;
      print("Error:${response}");
    }

  }



  Future getCategoriesByFilterList({String? simsId})async{
    print("simsId:${simsId}");
    status=Status.loading;
      _resultFilter.clear();
      await Future.forEach<Result>(result, (element){
        String? slug=element.slug;
        if(slug!=null&&slug.isNotEmpty&&slug.contains(simsId!)){
          _resultFilter.add(element);

        }
      });
    _resultFilter.forEach((element) {
      print("_resultFilter:${element.name}");
    });

      status=Status.loaded;
  }

  
  /*for(int i=0;i<result.length;i++){
        switch(sims){
          case "sims-2-mod":
            _resultFilter.add(result[i]);
            break;
          case "sims-2-cheat":
            _resultFilter.add(result[i]);
            break;
          case "sims-3-mod":
            _resultFilter.add(result[i]);
            break;
          case "sims-3-cheat":
            _resultFilter.add(result[i]);
            break;
          case "sims-4-mod":
            _resultFilter.add(result[i]);
            break;
          case "sims-4-cheat":
            _resultFilter.add(result[i]);
            break;
        }
      }*/
}
