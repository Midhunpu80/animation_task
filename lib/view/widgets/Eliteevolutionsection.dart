import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/utilities/colors.dart';
import 'package:test1/view/utilities/images.dart';

eliteevolutionsection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [

      eltecard(txt: "MATCHES\n PLAYES", txt2: "50"),
      Container(
        height: 20.h,
        width: 30.w,
 
        child: Column(
          children: [
            SizedBox(height: 9.h,),
            playerbiodata(lef: "AGE :", right: "37"),
            playerbiodata(lef: "WEIGHT :", right: "88 KG"),
                        playerbiodata(lef: "HEIGHT :", right: "5,9"),

          ],
        )
      ),

      eltecard(txt: "TRAINING \nCOMPLETED", txt2: "25"),



      
    ],
  );
}

eltecard({required var txt, required var txt2}) {
  return Container(
    height: 20.h,
    width: 30.w,
    child: Stack(
      children: [
        SvgPicture.string(
          screen3,
          width: 400,
          height: 500,
        ),
        Positioned(
          top: 5.h,
          left: 3.h,
          child: Text(
            txt,
            style: TextStyle(
              color: blu,
              fontSize: 9.sp,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: <Shadow>[
                // ignore: prefer_const_constructors
                Shadow(
                  offset:const  Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color:const  Color.fromARGB(255, 255, 255, 255),
                ),
                // ignore: prefer_const_constructors
                Shadow(
                  offset: const Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color:const  Color.fromARGB(123, 0, 0, 255),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          left: 5.h,
          child: Text(
            txt2,
            style: TextStyle(
              color: blu,
              fontSize: 19.sp,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: <Shadow>[
                // ignore: prefer_const_constructors
                Shadow(
                  offset:const  Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color:const  Color.fromARGB(255, 255, 255, 255),
                ),
                // ignore: prefer_const_constructors
                Shadow(
                  offset:const Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color:const  Color.fromARGB(123, 0, 0, 255),
                ),
              ],
            ),
          ),
        ),

      ],
    ),
  );
}

Widget playerbiodata({required var lef,required var right}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              NeonText(
          text: lef,
          spreadColor: wh,
          blurRadius: 98,
          textSize: 9.sp,
          textColor: blu,
        ),
          NeonText(
          text: right,
          spreadColor: wh,
          blurRadius: 98,
          textSize: 9.sp,
          textColor: re,
        ),
            
          ],
        );
}