import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;
  final double iconSize;
  const AppIcon({
    Key? key,
    required this.icon,
    this.iconColor = const Color(0xFF756d54),
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.size = 45,
    this.iconSize = 16
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size == 45 ? Dimensions.appIconSize45 : size,
      width: size == 45 ? Dimensions.appIconSize45 : size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
