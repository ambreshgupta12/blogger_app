
// void launchURL(BuildContext context, String url,
//     {VoidCallback? onWebSiteOpen}) async {
//   try {
//     await launch(
//       url,
//       option: CustomTabsOption(
//         enableDefaultShare: true,
//         enableUrlBarHiding: true,
//         showPageTitle: true,
//         extraCustomTabs: <String>[
//           // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
//           'org.mozilla.firefox',
//           // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
//           'com.microsoft.emmx',
//         ],
//       ),
//     )
//     if (onWebSiteOpen != null) {
//       onWebSiteOpen();
//     }
//   } catch (e) {
//     // An exception is thrown if browser app is not installed on Android device.
//     debugPrint(e.toString());
//     if (e.toString().contains("supports URL of http")) {
//       launchURL(context, "https://$url");
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void launchUrl(BuildContext context, String url,
    {VoidCallback? onWebSiteOpen}) {
  try {
    FlutterWebBrowser.openWebPage(
      url: url,
      customTabsOptions: CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        toolbarColor: Colors.white,
        secondaryToolbarColor: Colors.white,
        navigationBarColor: Colors.white,
        addDefaultShareMenuItem: true,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
      safariVCOptions: SafariViewControllerOptions(
        barCollapsingEnabled: true,
        preferredBarTintColor: Colors.white,
        preferredControlTintColor: Colors.white,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        modalPresentationCapturesStatusBarAppearance: true,
      ),
    );
    if (onWebSiteOpen != null) {
      onWebSiteOpen();
    }
  } catch (e) {
    // An exception is thrown if browser app is not installed on Android device.
    debugPrint(e.toString());
    if (e.toString().contains("supports URL of http")) {
      launchUrl(context, "https://$url");
    }
  }
}
