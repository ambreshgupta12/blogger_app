import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/decoration_constants.dart';
import 'package:blogger_app/src/constants/enums.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/models/response/categories/categories_response.dart';
import 'package:blogger_app/src/notifiers/categories_provider.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({Key? key}) : super(key: key);

  @override
  _CategoriesListScreenState createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Provider.of<CategoriesProvider>(context,listen: false).getCategoriesList();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    TextThemes(context);
    return Scaffold(
      backgroundColor: KColors.whiteLilacColor,
      appBar: AppBar(
          backgroundColor: KColors.secondaryDark,
          title: Text(KString.categoriesList,
          style: TextThemes.h20.copyWith(
              color: KColors.white, fontWeight: FontWeight.bold))),

      body: Consumer<CategoriesProvider>(
        builder: (BuildContext context, CategoriesProvider categoriesProvider, Widget? child) {
        if(categoriesProvider.status==Status.loading){
          return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(KColors.secondaryDark)));
        }
        else if(categoriesProvider.categoriesResponse.result!=null&&categoriesProvider.status==Status.loaded){
          List<Result>? categoriesResultList=categoriesProvider.categoriesResponse.result;
          return  ListView.builder(
            padding: const EdgeInsets.only(left: Dimens.px16,right: Dimens.px16,top:Dimens.px16),
            itemCount: categoriesResultList!.length,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  onTap: ()=>Navigator.of(context).pushNamed(RoutePath.PostScreen,arguments: categoriesResultList[index].id),
                  title: Text('${categoriesResultList[index].name}',
                      style: TextThemes.h18.copyWith(
                          color: KColors.black, fontWeight: FontWeight.w500)),
                ),
              );
            });
        }
        else if(categoriesProvider.categoriesError.length>0&&categoriesProvider.status==Status.loaded){
         return Center(
           child: Text(categoriesProvider.categoriesError,
                style: TextThemes.h20.copyWith(
                    color: KColors.secondaryDark, fontWeight: FontWeight.w500)),
         );
        }
        return SizedBox();
        },
      ),
    );
  }
}
/* child: GridView.count(
                crossAxisCount: 2 ,
                mainAxisSpacing: 32,
                crossAxisSpacing: 20,
                children: List.generate(categoriesResultList!.length,(index){
                  return Container(
                    decoration: KDecoration.boxDecoration(
                        radius: Dimens.px6,
                        color: KColors.white,
                        border: Border.all(color: Colors.black,width: Dimens.px1)
                    ),
                      child: Text('${categoriesResultList[index].name}',
                          style: TextThemes.h18.copyWith(
                              color: KColors.black, fontWeight: FontWeight.w500))
                  );
                }),
              ),*/