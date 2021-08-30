import 'package:blogger_app/src/constants/url_constants.dart';
import 'package:blogger_app/src/models/response/all_post/all_post_response.dart';
import 'package:blogger_app/src/models/top_headlines_news/top_headlines_news_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) = _RestClient;

  @GET(KUrl.topHeadlines)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<TopHeadlinesNewsResponse> getTopHeadlinesNews(
      {@Query("country") String? country,
        @Query("pageSize") int? pageSize,
        @Query("page") int? page,
        @Query("apiKey") String? apiKey,
        @Query("category") String? category = ''});

  @GET(KUrl.topHeadlines)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<TopHeadlinesNewsResponse> searchTopHeadlinesNews(
      {@Query("country") String? country,
        @Query("apiKey") String? apiKey,
        @Query("q") String? keyword});


  @GET('')
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<AllPostResponse> getAllPost();

}