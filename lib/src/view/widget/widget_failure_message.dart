import 'package:blogger_app/src/constants/asset_constants.dart';
import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/string_constants.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class WidgetFailureMessage extends StatelessWidget {
  final String errorTitle;
  final String errorSubtitle;

  WidgetFailureMessage({
    this.errorTitle = KString.youSeemToBeOffline,
    this.errorSubtitle =KString.checkYourWiFiConnectionInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          AssetsConstant.noInternet,
          width: Dimens.px200,
          height: Dimens.px200,
        ),
        SizedBox(height: Dimens.px24),
        Text(
          errorTitle,
          style: TextStyle(
              color: KColors.secondaryDark, fontWeight: FontWeight.w500,fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: Dimens.px8),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            errorSubtitle,
            style: TextStyle(
                color: KColors.secondaryDark, fontWeight: FontWeight.w500,fontSize: 20),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}