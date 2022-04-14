import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  double height;
  TextOverflow overFlow;
  bool overFlowIsTrue;
  SmallText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFFccc7c5),
      this.size = 12,
      this.height = 1.2,
      this.overFlow = TextOverflow.ellipsis,
      this.overFlowIsTrue=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlowIsTrue?TextOverflow.ellipsis:null,
      maxLines: overFlowIsTrue?1:null,
      style: TextStyle(
        fontFamily: "Roboto",
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
