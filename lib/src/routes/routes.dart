import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case RoutePath.SplashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    /*
      case RoutePath.LoginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RoutePath.SignUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
        case RoutePath.MovieScreen:
        return MaterialPageRoute( settings: settings,builder: (_) => MovieScreen());
        case RoutePath.AddMovieScreen:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => AddMovieScreen(
            updateMovie: settings.arguments as UpdateMovie,
            ));*/

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
