import 'dart:async';

import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/decoration_constants.dart';
import 'package:blogger_app/src/notifiers/movie_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:blogger_app/src/view/common/assets_image_widget.dart';
import 'package:blogger_app/src/view/screen/article_details_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(RoutePath.CategoriesListScreen);
  }

  @override
  void initState() {
    super.initState();
    getPostData();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 3));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  void getPostData(){
    Provider.of<PostProvider>(context,listen: false).getAllPost();
  }

  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: KColors.white,
      appBar: AppBar(title: Text('All Post',style:TextThemes.h18.copyWith(color: KColors.white,fontWeight: FontWeight.w500))),
      body: Consumer<PostProvider>(
        builder: (context,model,child){
          return Container(
            height: MediaQuery.of(context).size.height*0.77,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child:

            !model.isLoading? ListView.builder(
                itemCount: model.allPostResponse.data?.length??0,
                itemBuilder: (BuildContext context,int index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ArticleDetailsScreen( htmlContent: model.allPostResponse.data?[index].content??"",)));
                    },
                    child: Container(
                      decoration: KDecoration.boxDecoration(
                        radius: Dimens.px6,
                        color: KColors.white,
                        border: Border.all(color: Colors.black,width: Dimens.px1),
                      ),
                      child: AssetImageWidget(
                        imagePath: "assets/images/article_placeholder.png",
                        height: 80,
                        width: 80,
                        boxFit: BoxFit.contain,
                      ),
                    ),
                  );
                }
            ):Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      )
    );

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
