import 'package:flutter/material.dart';
import 'package:testapp/utils/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Components{
  Widget showAttendancePercent(double percent){
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        CircularPercentIndicator(radius: 50.0,
        lineWidth: 8.0,
          linearGradient: LinearGradient(colors: [
            AppColors.bgColor2,
            AppColors.bgColor,

          ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
          animation: true,
          percent: percent,
          center: Text("${(percent*100).toStringAsFixed(1)}%",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: Colors.grey[300]!,

        ),

        Text("Overall",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
      ],
    );
  }

  PreferredSizeWidget appBar(String title,Color color){
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: color,
      shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(30) )
      ),
      title:  Text(title,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
    );
  }

  Widget InputBox(TextEditingController controller,String hint,Icon icon){
    return TextField(
      style:const TextStyle(fontSize: 16),
      controller:controller,

      decoration: InputDecoration(
          filled: true,
          prefixIcon:icon,

          hintText: hint,

          hintStyle:const TextStyle(fontSize: 16),
          fillColor: AppColors.white,

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),

          )
      ),
    );
  }
}