import 'package:flutter/cupertino.dart';

class SmallText1 extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const SmallText1(
      {Key? key,
      required this.text,
      this.color = const Color(0xFFccc7c5),
      this.size=12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size
      ),
    );
  }
}
