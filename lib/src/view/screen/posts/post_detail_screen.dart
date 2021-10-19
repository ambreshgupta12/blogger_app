

import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/view/common/html_text_widget.dart';
import 'package:flutter/material.dart';
class PostDetailsScreen extends StatefulWidget {
  final String htmlContent;
  PostDetailsScreen( { required this.htmlContent});

  @override
  _PostDetailsScreenState createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.whiteLilacColor,
      appBar: AppBar(
          backgroundColor: KColors.secondaryDark,

          title: Text('Post Details',style:TextStyle(color: KColors.white,fontWeight: FontWeight.w500,fontSize: 18))),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimens.px0,horizontal: Dimens.px8),
          child: SingleChildScrollView(
            child: HtmlTextWidget(
              htmlData: widget.htmlContent,
            ),
          )
      ),
    );
  }
}

