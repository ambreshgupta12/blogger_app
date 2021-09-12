import 'package:blogger_app/src/models/response/all_post/all_post_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();

  String _postError = '';
  AllPostResponse? _allPostResponse;

  AllPostResponse get allPostResponse => _allPostResponse!;

  set allPostResponse(AllPostResponse value) {
    _allPostResponse = value;
    notifyListeners();
  }

  String get postError => _postError;

  set postError(String value) {
    _postError = value;
    notifyListeners();
  }

  // call api

 void getAllPost() async {
    var response = await _appRepository.getAllPost();
    if (response is AllPostResponse) {
      _allPostResponse = response;
      print("PostData:${response.toJson()}");
    } else if (response is String) {
      _postError = response;
      print("Error:${response}");
    }
  }
}
