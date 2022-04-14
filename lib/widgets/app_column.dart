import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  String? text;
  String? stars;
  String? commentsAmount;
  String? location;
  String? time;
  AppColumn(
      {Key? key,
      this.text = 'text',
      this.stars = '4.1',
      this.location = '1.7km',
      this.time = '32min',
      this.commentsAmount = '1287',})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text!,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 18,
                  
                  color:(double.parse(stars!).floor())>index? AppColors.mainColor:Colors.grey,
                );
              }),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: stars!),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: commentsAmount!),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
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
                text: location!,
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: time!,
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
