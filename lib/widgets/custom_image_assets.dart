import 'package:flutter/material.dart';

class CustomImageAssets extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius = BorderRadius.zero;
  const CustomImageAssets({super.key, this.width, this.height, required BorderRadiusGeometry borderRadius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.asset(
        "assets/images/profile.jpg",
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
