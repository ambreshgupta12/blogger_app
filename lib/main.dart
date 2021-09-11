import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/notifiers/categories_provider.dart';
import 'package:blogger_app/src/notifiers/post_provider.dart';
import 'package:blogger_app/src/resource/theme/app_theme.dart';
import 'package:blogger_app/src/routes/routes.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';



void main()async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoriesProvider>(create: (_) => CategoriesProvider()),
        ChangeNotifierProvider<PostProvider>(create: (_) => PostProvider()),
      ],
      child: MaterialApp(
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        debugShowCheckedModeBanner: false,
        title: KString.appName,
        theme: AppTheme.themeData(),
         onGenerateRoute: Routes.generateRoute,
        initialRoute: RoutePath.CategoriesListScreen,
      ),
    );
  }
}




