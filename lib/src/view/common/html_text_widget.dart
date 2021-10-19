
import 'package:blogger_app/src/constants/color_constants.dart';
import 'package:blogger_app/src/constants/route_path.dart';
import 'package:blogger_app/src/view/common/helper.dart';
import 'package:blogger_app/src/view/common/inapp_browers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


class HtmlTextWidget extends StatelessWidget {
  final String htmlData;

  const HtmlTextWidget({
    required this.htmlData,
  });

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    print("Dsd:${htmlData}");

    return Html(
      shrinkWrap: true,
      data: htmlData,
       style: {
         "table": Style(
           backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
         ),
         "iframe": Style(
           width: size.width,
           height: size.height/12,
           color: Colors.red,
           backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
         ),

       /*  "li": Style(
          color: Colors.red,
           textAlign: TextAlign.
         ),
         "a": Style(
             color: Colors.red,
             textAlign: TextAlign.center
         ),*/
         "tr": Style(
           border: Border(bottom: BorderSide(color: Colors.grey)),
         ),
         "th": Style(
           padding: EdgeInsets.all(6),
           backgroundColor: Colors.grey,
         ),
         "td": Style(
           padding: EdgeInsets.all(6),
           alignment: Alignment.topLeft,
         ),
         'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
       },
       customRender: {
         "table": (context, child) {
           return SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child:
             (context.tree as TableLayoutElement).toWidget(context),
           );
         },
         "bird": (RenderContext context, Widget child) {
           return TextSpan(text: "🐦");
         },
         "flutter": (RenderContext context, Widget child) {
           return FlutterLogo(
             style: (context.tree.element!.attributes['horizontal'] != null)
                 ? FlutterLogoStyle.horizontal
                 : FlutterLogoStyle.markOnly,
             textColor: context.style.color!,
             size: context.style.fontSize!.size! * 5,
           );
         },
       },

       customImageRenders: {
         networkSourceMatcher(domains: ["flutter.dev"]):
             (context, attributes, element) {
           return FlutterLogo(size: 36);
         },
         networkSourceMatcher(domains: ["mydomain.com"]):
         networkImageRender(
           headers: {"Custom-Header": "some-value"},
           altWidget: (alt) => Text(alt ?? ""),
           loadingWidget: () => Text("Loading..."),
         ),
         // On relative paths starting with /wiki, prefix with a base url
             (attr, _) =>
         attr["src"] != null && attr["src"]!.startsWith("/wiki"):
         networkImageRender(
             mapUrl: (url) => "https:upload.wikimedia.org" + url!),
         // Custom placeholder image for broken links
         networkSourceMatcher():
         networkImageRender(altWidget: (_) => FlutterLogo()),
       },
      onLinkTap: (url, _, __, ___) {
        print("Opening $url...");
       // showAlertDialog(context,url!);
        Navigator.of(context).pushNamed(RoutePath.WebViewScreen,arguments: url);
      },
       onImageTap: (src, _, __, ___) {
         print(src);
       },
       onImageError: (exception, stackTrace) {
         print(exception);
       },
       onCssParseError: (css, messages) {
         print("css that errored: $css");
         print("error messages:");
         messages.forEach((element) {
           print(element);
         });
       },
    );
  }

  showAlertDialog(BuildContext context,String url) {

    // set up the buttons
    Widget cancelButton = TextButton(
     child: Text('Cancel',style:TextStyle(color: KColors.secondaryDark,fontWeight: FontWeight.bold,fontSize: 18)),
      onPressed:  ()=>Navigator.of(context).pop(),
    );
    Widget continueButton = TextButton(
      child: Text('Continue',style:TextStyle(color: KColors.secondaryDark,fontWeight: FontWeight.bold,fontSize: 18)),
      onPressed:  (){
        launchUrl(context, Helper.checkUrl(url));
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
        title: Text('Notice',style:TextStyle(color: KColors.black,fontWeight: FontWeight.w500,fontSize: 20)),
       content: Text("Would you like to open the following link in the browser?",style:TextStyle(color: KColors.searchIconColor,fontWeight: FontWeight.w500,fontSize: 18)),
      actions: [
        cancelButton,
        continueButton
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
