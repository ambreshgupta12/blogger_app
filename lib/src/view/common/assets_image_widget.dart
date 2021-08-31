
import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final BoxFit boxFit;

  const AssetImageWidget({
    required this.height,
    required this.width,
    required this.imagePath,
    this.boxFit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
      fit: boxFit,
    );
  }
}
