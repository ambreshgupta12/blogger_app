import 'dart:async';

import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/enums.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/notifiers/post_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/view/widget/widget_failure_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';

class PostScreen extends StatefulWidget {
  final Result? result;

  PostScreen({required this.result});

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen>
    with SingleTickerProviderStateMixin {
  late PostProvider postProvider;
  final ScrollController _scrollController = ScrollController();
 late bool isArrowDirection=false;

  @override
  void initState() {
    postProvider = Provider.of<PostProvider>(context, listen: false);
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      postProvider.postError = '';
      postProvider.resultList = [];
      postProvider.page=1;
      postProvider.getPostByCategoriesId(
          postId: widget.result!.id!);
    });
    loadMoreListener();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void loadMoreListener() {
    print('loaded more -----------------------');
    _scrollController
      ..addListener(() {
        if (_scrollController.offset ==
            _scrollController.position.maxScrollExtent) {
          postProvider.getPostByCategoriesIdLoadMore(postId: widget.result!.id!);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
      builder: (context, PostProvider postProvider, Widget? child)=>Scaffold(
        backgroundColor: KColors.whiteLilacColor,
        appBar: AppBar(
            backgroundColor: KColors.secondaryDark,
            title: Text(KString.postsList,
                style: TextStyle(
                    color: KColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))),
        floatingActionButton: Visibility(
          visible: ((widget.result!.count!=null&&widget.result!.count!>8)&&(postProvider.resultList.length>10)),
          child: FloatingActionButton(
            backgroundColor: KColors.secondaryDark,
            onPressed: (){
             setState(() {
               if (_scrollController.position.allowImplicitScrolling) {
                 if (_scrollController.position.pixels == 0) {
                   // You're at the top.
                   isArrowDirection=false;
                   _scrollController.animateTo(_scrollController.position.maxScrollExtent,duration: Duration(milliseconds: 800),curve: Curves.linear);
                 } else {
                   // You're at the bottom.
                   isArrowDirection=true;
                   _scrollController.animateTo(_scrollController.position.minScrollExtent,duration: Duration(milliseconds: 800),curve: Curves.linear);
                 }
               }
             });
            },
            tooltip: isArrowDirection?'Move to down':'Move to top',
            child: Icon(isArrowDirection?Icons.arrow_downward_rounded:Icons.arrow_upward_rounded),
          ),
        ),
        body: _buildConsumerWidget(),
      ),
    );
  }

  Widget _buildConsumerWidget() {
    return Consumer<PostProvider>(
      builder:
          (BuildContext context, PostProvider postProvider, Widget? child) {
        if (postProvider.status == Status.loading &&
            postProvider.resultList.isEmpty) {
          return Center(
              child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(KColors.secondaryDark)));
        }
         else if((postProvider.postError.length>0&&postProvider.postError.compareTo('No internet connection.')==0)&&postProvider.status==Status.loaded){
            return Center(
              child: WidgetFailureMessage()
            );
          }
        else if (postProvider.resultList.isNotEmpty && postProvider.status == Status.loaded) {
          print("TOTAL LIST:${postProvider.resultList.length}");
        } else if ((postProvider.resultList.isEmpty) &&
            postProvider.status == Status.loaded) {
          return Center(
            child: Text("No Data found !!!",
                style: TextStyle(
                    color: KColors.secondaryDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
          );
        }

        return _buildListView(
            result: widget.result, postProvider: postProvider);
      },
    );
  }

  Widget _buildListView(
      {@required Result? result, @required PostProvider? postProvider}) {
    return ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.only(
            left: Dimens.px16,
            right: Dimens.px16,
            top: Dimens.px16,
            bottom: Dimens.px16),
        itemCount: postProvider!.status == Status.loading
            ? postProvider.resultList.length + 1
            : postProvider.resultList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          print("result Data:${postProvider.resultList.length}");
          if (index == postProvider.resultList.length) {
            Timer(Duration(milliseconds: 30), () {
              _scrollController
                  .jumpTo(_scrollController.position.maxScrollExtent);
            });
            return Center(
                child: Container(
                  width: Dimens.px25,
                  height: Dimens.px25,
                  margin: const EdgeInsets.only(top:Dimens.px16),
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(KColors.secondaryDark)),
                ));
          } else if (index < postProvider.resultList.length)
            return Card(
              child: ListTile(
                onTap: () => Navigator.of(context).pushNamed(
                    RoutePath.PostDetailsScreen,
                    arguments:
                        postProvider.resultList[index].content!.rendered),
               /* title: Text('${removeAllHtmlTags(postProvider.resultList[index].excerpt!.rendered)}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: KColors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)

                ),*/
                title: Html(
                    style: {
                      "p": Style(
                        color: KColors.black,
                        fontSize: FontSize.larger,
                        fontWeight: FontWeight.w500
                      ),
                    },
                    shrinkWrap: true,
                    data: postProvider.resultList[index].excerpt!.rendered),

              ),
            );
          return SizedBox();
        });
  }
  String removeAllHtmlTags(String? htmlText) {
    RegExp exp = RegExp(
        r"<[^>]*>",
        multiLine: true,
        caseSensitive: true
    );

    return htmlText!.replaceAll(exp, '');
  }
}
