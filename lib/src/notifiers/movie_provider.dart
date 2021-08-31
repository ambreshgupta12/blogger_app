import 'package:blogger_app/src/models/response/all_post/all_post_response.dart';
import 'package:blogger_app/src/models/response/test_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();

  String _postError = '';
  TestResponse _allPostResponse = TestResponse();

  TestResponse get allPostResponse => _allPostResponse;

  bool _isLoading = false;

  set allPostResponse(TestResponse value) {
    _allPostResponse = value;
    notifyListeners();
  }

  String get postError => _postError;

  set postError(String value) {
    _postError = value;
    notifyListeners();
  }


  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  } // call api

 void getAllPost() async {
    isLoading = true;
    var response = await _appRepository.getAllPost();
    isLoading = false;
    if (response is TestResponse) {
      allPostResponse = response;
      print("PostData:${response.toJson()}");
    } else if (response is String) {
      _postError = response;
      print("Error:${response}");
    }

  }
}
