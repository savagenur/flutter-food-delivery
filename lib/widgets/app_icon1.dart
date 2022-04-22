import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AppIcon1 extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final double size;
  final Color backgroundColor;
  const AppIcon1({
    Key? key,
    required this.icon,
    required this.iconColor,
    this.iconSize = 0, this.backgroundColor=Colors.white, this.size=0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == 0 ? Dimensions.appIconSize45 : size,
      height: size == 0 ? Dimensions.appIconSize45 : size,
      decoration: BoxDecoration(
        color: backgroundColor,
          borderRadius: BorderRadius.circular(
              size == 0 ? Dimensions.appIconSize45 / 2 : iconSize / 2)),
              child: Icon(icon,size: iconSize==0?16:iconSize,color: iconColor,),
    );
  }
}
