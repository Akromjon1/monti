import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';
import 'small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  ExpandableTextWidget({Key? key,  required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
   late String firstHalf;
   late String secondHalf;

  bool hiddenText = true;

  double textheight = Dimensions.screenHeight!/6.17;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length > textheight){
      firstHalf = widget.text.substring(0, textheight.toInt());
      secondHalf = widget.text.substring(textheight.toInt()+1,widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
          SmallText(height: 1.5,color: AppColors.paraColor, size: Dimensions.font16, text: hiddenText?(firstHalf+ "..."):(firstHalf + secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: hiddenText? "Show more":"Show less", color: AppColors.mainColor,),
                Icon(hiddenText? Icons.arrow_drop_down: Icons.arrow_drop_up, color: AppColors.mainColor,)
              ],
            ),
          )

        ],
      ),
    );
  }
}
