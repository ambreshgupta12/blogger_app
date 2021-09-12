import 'package:blogger_app/src/constants/url_constants.dart';
import 'package:blogger_app/src/models/request/post/post_request.dart';
import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/models/response/post/post_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) = _RestClient;



  @POST(KUrl.categories)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse> getCategoriesList();


  @POST(KUrl.posts)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse> getPostById({@Body() required PostRequest postRequest});

}