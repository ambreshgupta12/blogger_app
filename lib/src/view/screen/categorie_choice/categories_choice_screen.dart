import 'package:blogger_app/src/constants/asset_constants.dart';
import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/decoration_constants.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/resource/theme/text_themes.dart';
import 'package:flutter/material.dart';

class CategoriesChoiceScreen extends StatefulWidget {
  const CategoriesChoiceScreen({Key? key}) : super(key: key);

  @override
  _CategoriesChoiceScreenState createState() => _CategoriesChoiceScreenState();
}

class _CategoriesChoiceScreenState extends State<CategoriesChoiceScreen> {
  late List<AllSimsCheatsModel> _allSimsCheatsModelList = [];

  @override
  void initState() {
    super.initState();
    initAllSimsCheatsData();
  }

  void initAllSimsCheatsData() {
    _allSimsCheatsModelList.add(AllSimsCheatsModel(
        assetsUrl: AssetsConstant.sims2, name: "The Sims 2",simsId: "sims-2"));
    _allSimsCheatsModelList.add(AllSimsCheatsModel(
        assetsUrl: AssetsConstant.sims3, name: "The Sims 3",simsId: "sims-3"));
    _allSimsCheatsModelList.add(AllSimsCheatsModel(
        assetsUrl: AssetsConstant.sims4, name: "The Sims 4",simsId: "sims-4"));
  }

  @override
  Widget build(BuildContext context) {
    TextThemes(context);

    return Scaffold(
      backgroundColor: KColors.whiteLilacColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: KColors.secondaryDark,
          title: Text(KString.categoriesList,
              style: TextThemes.h20.copyWith(
                  color: KColors.white, fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.px16, vertical: Dimens.px16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 32,
          crossAxisSpacing: 20,
          children: List.generate(_allSimsCheatsModelList.length, (index) {
            return itemWidget(
                allSimsCheatsModel: _allSimsCheatsModelList[index]);
          }),
        ),
      ),
    );
  }

  Widget itemWidget({AllSimsCheatsModel? allSimsCheatsModel}) {
    return InkWell(
      onTap: ()=>Navigator.pushNamed(context, RoutePath.CategoriesListScreen,arguments:allSimsCheatsModel!.simsId),
      child: Container(
        decoration: KDecoration.boxDecoration(
            radius: Dimens.px6,
            color: KColors.lightWhite,
            border: Border.all(color: KColors.black, width: Dimens.px1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              allSimsCheatsModel!.assetsUrl!,
              height: Dimens.px120,
              fit: BoxFit.fitWidth,
            ),
            Text(allSimsCheatsModel.name!,
                style: TextThemes.h18.copyWith(
                    color: KColors.secondaryDark, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

class AllSimsCheatsModel {
  String? assetsUrl;
  String? name;
  String? simsId;


  AllSimsCheatsModel({@required this.name, @required this.assetsUrl,@required this.simsId});
}
