import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/utilities/colors.dart';

appbars() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NeonText(
          text: "PROFILE",
          spreadColor: wh,
          blurRadius: 98,
          textSize: 12.sp,
          textColor: re,
        ),
        // ignore: prefer_const_constructors
   SizedBox(width: 5.w,),
        Row(
          children: [
            Icon(
              Icons.home,
              color: wh.withOpacity(0.5),
              shadows: const [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color: Color.fromARGB(255, 0, 206, 206),
                ),
                // ignore: prefer_const_constructors
                Shadow(
                    offset: Offset(1.0, 10.0),
                    blurRadius: 20.0,
                    color: Color.fromARGB(255, 0, 195, 255)),
              ],
            ),
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage("images/setting inverse 1_common.png"),
            ),
          ],
        )
      ],
    ),
  );
}
