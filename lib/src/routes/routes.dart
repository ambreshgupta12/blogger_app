import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/view/screen/categories/categories_list_screen.dart';
import 'package:blogger_app/src/view/screen/posts/post_detail_screen.dart';
import 'package:blogger_app/src/view/screen/posts/post_screen.dart';
import 'package:blogger_app/src/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case RoutePath.SplashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutePath.CategoriesListScreen:
        return MaterialPageRoute(builder: (_) => CategoriesListScreen());
      case RoutePath.PostScreen:
        return MaterialPageRoute(settings: settings, builder: (_) => PostScreen(postId: settings.arguments as int));
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
