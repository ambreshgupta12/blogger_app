import 'package:blogger_app/src/models/response/post/post_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:blogger_app/src/constants/enums.dart';


class PostProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();
  Status _status=Status.ideal;

  String _postError = '';
  PostResponse? _postResponse=PostResponse();

  PostResponse get postResponse => _postResponse!;

  set postResponse(PostResponse value) {
    _postResponse = value;
    notifyListeners();
  }


  Status get status => _status;

  set status(Status value) {
    _status = value;
    notifyListeners();
  }

  String get postError => _postError;

  set postError(String value) {
    _postError = value;
    notifyListeners();
  }

  // call api

  void getPostByCategoriesId({@required String? statuss,@required int? postId}) async {

    status=Status.loading;
    var response = await _appRepository.getPostById(status: statuss,postId: postId);
    if (response is PostResponse) {
      status=Status.loaded;
      postResponse = response;
      print("PostData:${response.toJson()}");
    } else if (response is String) {
      status=Status.loaded;
      postError = response;
      print("Error:${response}");
    }
  }
}
