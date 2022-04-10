import 'package:flutter/cupertino.dart';
import 'package:food_delivery/widgets/small_text1.dart';

class IconAndTextWidget1 extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const IconAndTextWidget1({Key? key,required this.icon, required this.iconColor, 
  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(width: 3,),
        SmallText1(text: text)
      ],
    );
  }
}
