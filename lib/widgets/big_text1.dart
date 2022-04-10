import 'package:flutter/cupertino.dart';

class BigText1 extends StatelessWidget {
  final String text;
  final Color color;
  TextOverflow textOverflow;
  double size;
  BigText1(
      {Key? key,
      required this.text,
      this.color = const Color(0xFF332d2b),
      this.size = 20,
      this.textOverflow=TextOverflow.ellipsis
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      overflow: textOverflow,
      maxLines: 1,
      style: TextStyle(
        
        // overflow: textOverflow,
        fontSize: size,
        fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w700

      ),
    );
  }
}
