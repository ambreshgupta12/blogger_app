import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/view/screen/categorie_choice/categories_choice_screen.dart';
import 'package:blogger_app/src/view/screen/categories/categories_list_screen.dart';
import 'package:blogger_app/src/view/screen/posts/post_detail_screen.dart';
import 'package:blogger_app/src/view/screen/posts/post_screen.dart';
import 'package:blogger_app/src/view/screen/splash/splash_screen.dart';
import 'package:blogger_app/src/view/screen/webview/web_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case RoutePath.SplashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutePath.CategoriesListScreen:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => CategoriesListScreen(simsId: settings.arguments as String));
        case RoutePath.WebViewScreen:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => WebViewScreen(url: settings.arguments as String));
        case RoutePath.CategoriesChoiceScreen:
        return MaterialPageRoute(builder: (_) => CategoriesChoiceScreen());
      case RoutePath.PostScreen:
        return MaterialPageRoute(settings: settings, builder: (_) => PostScreen(result: settings.arguments as Result));
        case RoutePath.PostDetailsScreen:
        return MaterialPageRoute(settings: settings, builder: (_) => PostDetailsScreen(htmlContent: settings.arguments as String));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
