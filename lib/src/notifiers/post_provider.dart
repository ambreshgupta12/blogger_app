import 'package:blogger_app/src/models/response/post/post_response.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:blogger_app/src/constants/enums.dart';


class PostProvider with ChangeNotifier {
  /*App Repository */
  final AppRepository _appRepository = AppRepository();
  Status _status=Status.ideal;
  late List<PostResult> _resultList=[];
  int _page = 1;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  } // default page



  List<PostResult> get resultList => _resultList;

  set resultList(List<PostResult> value) {
    _resultList = value;
    notifyListeners();
  }

  String _postError = '';





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

  void getPostByCategoriesId({@required int? postId}) async {
    status=Status.loading;
    var response = await _appRepository.getPostById(postId: postId,page:1);
    if (response is PostResponse) {
      status=Status.loaded;
      resultList.addAll(response.result!);
      print("PostData:${response.toJson()}");
    } else if (response is String) {
      status=Status.loaded;
      postError = response;
      print("Error:${response}");
    }
  }

  void getPostByCategoriesIdLoadMore({@required int? postId}) async {
    status=Status.loading;
    _page=page+1;
    var response = await _appRepository.getPostById(postId: postId,page:page);
    if (response is PostResponse) {
      status=Status.loaded;
      resultList.addAll(response.result!);

      print("PostData:${response.toJson()}");
    } else if (response is String) {
      status=Status.loaded;
      postError = response;
      print("Error:${response}");
    }
  }

}
