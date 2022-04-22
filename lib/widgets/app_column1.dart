import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text1.dart';
import 'package:food_delivery/widgets/icon_and_text_widget1.dart';
import 'package:food_delivery/widgets/small_text1.dart';

import '../utils/colors.dart';
import 'icon_and_text_widget.dart';

class AppColumn1 extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  const AppColumn1(
      {Key? key,
      required this.text,
      this.textColor = Colors.black,
      this.textSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText1(
          text: text,
          color:
              textColor == Colors.black ? AppColors.mainBlackColor : textColor,
          size: textSize == 20 ? Dimensions.font20 : textSize,
        ),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
          children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: AppColors.mainColor,
              size: Dimensions.iconSize16,
            );
          }),
        ),
        SizedBox(width: Dimensions.width10,),
        SmallText1(text: '4'),
        SizedBox(width: Dimensions.width10,),
        SmallText1(text: '1287'),
        SizedBox(width: Dimensions.width10,),
        SmallText1(text: 'comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: '32min',
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
