import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/decoration_constants.dart';
import 'package:blogger_app/src/models/response/all_post/all_post_response.dart';
import 'package:blogger_app/src/notifiers/movie_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:blogger_app/src/services/repositories/app_repository.dart';
import 'package:blogger_app/src/view/common/assets_image_widget.dart';
import 'package:blogger_app/src/view/common/html_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ArticleDetailsScreen extends StatefulWidget {
  final String htmlContent;
  ArticleDetailsScreen( { required this.htmlContent});

  @override
  _ArticleDetailsScreenState createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: KColors.white,
      appBar: AppBar(title: Text('Article Details',style:TextThemes.h18.copyWith(color: KColors.white,fontWeight: FontWeight.w500))),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.px16,horizontal: Dimens.px16),
        child: HtmlTextWidget(
          htmlData: widget.htmlContent,
        )
      ),
    );
  }
}

