import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/decoration_constants.dart';
import 'package:blogger_app/src/models/response/all_post/all_post_response.dart';
import 'package:blogger_app/src/notifiers/movie_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:blogger_app/src/view/common/assets_image_widget.dart';
import 'package:blogger_app/src/view/screen/article_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    getPostData();
    super.initState();
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
  }
}
