import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> animation;

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(RoutePath.CategoriesListScreen);
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animationController.addListener(() => this.setState(() {if (animationController.isCompleted) {navigationPage();}}));
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: KColors.whiteLilacColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: animation.value * 250,
                height: animation.value * 250,
                child: const FlutterLogo(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
