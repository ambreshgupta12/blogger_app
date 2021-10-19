import 'dart:async';

import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/resource/dimensions/dimensions.dart';
import 'package:blogger_app/src/view/common/helper.dart';
import 'package:blogger_app/src/view/common/inapp_browers.dart';
import 'package:flutter/material.dart';

class WebViewScreen extends StatefulWidget {
  final String? url;

  const WebViewScreen({Key? key, this.url}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  Timer? _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            //launchUrl(context, Helper.checkUrl(widget.url ?? ""));
            Navigator.of(context).pop();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() => setState(() {}));
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColors.secondaryDark,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: KColors.whiteLilacColor,
      body: Container(
        padding: const EdgeInsets.only(left: Dimens.px32, right: Dimens.px32),
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Would you like to open the following link in the browser?",
                style: TextStyle(
                    color: KColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18)),
            const SizedBox(
              height: Dimens.px16,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: Dimens.px64,
                  height: Dimens.px64,
                  child: CircularProgressIndicator(
                    backgroundColor: KColors.secondaryDark.withOpacity(0.4),
                    valueColor: AlwaysStoppedAnimation(KColors.secondaryDark),
                    strokeWidth: 18,
                    value: animation.value,
                  ),
                ),
                Text("$_start",
                    style: TextStyle(
                        color: KColors.secondaryDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 26)),
              ],
            ),
            SizedBox(
              height: Dimens.px28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                              horizontal: Dimens.px32, vertical: Dimens.px14)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.px10),
                      ))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel',
                      style: TextStyle(
                          color: KColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                              horizontal: Dimens.px32, vertical: Dimens.px14)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          KColors.secondaryDark),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  onPressed: () {
                    launchUrl(context, Helper.checkUrl(widget.url ?? ""));
                    Navigator.of(context).pop();
                  },
                  child: Text('Continue',
                      style: TextStyle(
                          color: KColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
