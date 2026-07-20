import 'package:flutter/material.dart';

class CustomImageAssets extends StatelessWidget {
  final double? width;
  final double? height;
  const CustomImageAssets({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
      child: Image.asset(
        "assets/images/doctorProfile1.jpg",
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
