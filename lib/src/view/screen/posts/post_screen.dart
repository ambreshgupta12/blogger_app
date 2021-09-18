
import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/enums.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/models/response/post/post_response.dart';
import 'package:blogger_app/src/notifiers/post_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  final int? postId;
  PostScreen({required this.postId});
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> with SingleTickerProviderStateMixin {
 late PostProvider postProvider;


  @override
  void initState() {
    postProvider=Provider.of<PostProvider>(context,listen: false);
    postProvider.postResponse=PostResponse();
    postProvider.postError='';
    postProvider.getPostByCategoriesId(postId: widget.postId);



    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: KColors.whiteLilacColor,
      appBar: AppBar(
        backgroundColor: KColors.secondaryDark,
          title: Text(KString.postsList,
              // style: TextThemes.h20.copyWith(
              //     color: KColors.white, fontWeight: FontWeight.bold))),
        style: TextStyle(
                  color: KColors.white, fontWeight: FontWeight.bold, fontSize: 20))),
      body: _buildConsumerWidget(),

    );
  }

  Widget _buildConsumerWidget(){
    return
      Consumer<PostProvider>(
        builder: (BuildContext context, PostProvider postProvider, Widget? child) {
          if(postProvider.status==Status.loading){
            return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(KColors.secondaryDark)));
          }
          else if(postProvider.postError.length>0&&postProvider.status==Status.loaded){
            return Center(
              child: Text(postProvider.postError,
                  // style: TextThemes.h20.copyWith(
                  //     color: KColors.secondaryDark, fontWeight: FontWeight.w500)),
                style: TextStyle(
                      color: KColors.secondaryDark, fontWeight: FontWeight.w500,fontSize: 20)),
            );
          }
          else if(postProvider.postResponse.result!=null&&postProvider.status==Status.loaded){
            List<Result>? postResultList=postProvider.postResponse.result;
            return _buildListView(postResultList: postResultList);
          }

          return SizedBox();
        },
      );
  }


  Widget _buildListView({@required  List<Result>? postResultList}){
    return ListView.builder(
        padding: const EdgeInsets.only(left: Dimens.px16,right: Dimens.px16,top:Dimens.px16),
        itemCount: postResultList!.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: ()=>Navigator.of(context).pushNamed(RoutePath.PostDetailsScreen,
              arguments: postResultList[index].content!.rendered),
              title: Text('${postResultList[index].title!.rendered}',
                  // style: TextThemes.h18.copyWith(
                  //     color: KColors.black, fontWeight: FontWeight.w500)),
                style: TextStyle(
                      color: KColors.black, fontWeight: FontWeight.w500,fontSize: 18)),
            ),
          );
        });
  }


}




/* body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: Dimens.px16,right: Dimens.px16,top:Dimens.px16),
            height: Dimens.px45,
            decoration: KDecoration.boxDecoration(color: Colors.grey[300]),
            child: TabBar(
              controller: _tabController,
              indicator: KDecoration.boxDecoration(color: KColors.secondaryDark),
              labelColor: KColors.white,
              unselectedLabelColor: KColors.black,
              tabs: [
                const Tab(text: KString.publishTab),
                const Tab(text: KString.draftTab,),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                _buildConsumerWidget(),
                // second tab bar view widget
                _buildConsumerWidget()

              ],
            ),
          ),
        ],
      ),*/