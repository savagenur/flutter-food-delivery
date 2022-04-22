import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text1.dart';

class ExpandableTextWidget1 extends StatefulWidget {
  final String text;
  const ExpandableTextWidget1({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget1> createState() => _ExpandableTextWidget1State();
}

class _ExpandableTextWidget1State extends State<ExpandableTextWidget1> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = false;
  // bool showHiddenText = false;
  double textHeight = Dimensions.screenHeight / 5.97;

  void initState() {
    super.initState();
    if (widget.text.length < textHeight) {
      firstHalf = widget.text;
      secondHalf = '';
      // showHiddenText = true;
    } else {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt());
      hiddenText = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf!=''
          ? Column(
              children: [
                SmallText1(height: 1.6, color: Colors.black54,size: Dimensions.font16,text:hiddenText? firstHalf + '...':firstHalf+secondHalf),
                InkWell(
                  onTap: () {
                    setState(() {
                      // showHiddenText = !showHiddenText;
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText1(
                        height: 1.6,
                        size: Dimensions.font16,
                        text: hiddenText ? 'See more' : 'See less',
                        color: AppColors.mainColor,
                      ),
                      Icon(hiddenText? Icons.arrow_drop_down_sharp:Icons.arrow_drop_up_sharp,
                          color: AppColors.mainColor),
                    ],
                  ),
                )
              ],
            )
          : SmallText1(color: Colors.black54,size: Dimensions.font16,text: firstHalf),
    );
  }
}
