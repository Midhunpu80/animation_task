import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/utilities/colors.dart';

profilebiodata() {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: ClipPath(
          clipper: OctagonalClipper(),
          child: Container(
            height: 11.h,
            width: 27.w,
            decoration: BoxDecoration(
                image:const  DecorationImage(
                  image: AssetImage("images/30soccer-ronaldo-1-76fd-jumbo.webp"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 5,
                  color: gy,
                ),
                borderRadius: BorderRadius.circular(2.h)),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "CRISTIANO\nRONALDO",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 255, 251),
                fontSize: 20.sp,
                // ignore: prefer_const_literals_to_create_immutables
                shadows: <Shadow>[
                  // ignore: prefer_const_constructors
                  Shadow(
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 227, 250, 255),
                  ),
                  // ignore: prefer_const_constructors
                  Shadow(
                      offset: const Offset(2.0, 2.0),
                      blurRadius: 1.0,
                      color: Color.fromARGB(255, 235, 236, 236)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "FORWARD",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 21, 0),
                fontSize: 11.sp,
                letterSpacing: 8,
                // ignore: prefer_const_literals_to_create_immutables
                shadows: <Shadow>[
                  // ignore: prefer_const_constructors
                  Shadow(
                    offset: const Offset(1.0, 1.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 255, 255, 227),
                  ),
                  // ignore: prefer_const_constructors
                  Shadow(
                      offset: const Offset(2.0, 1.0),
                      blurRadius: 1.0,
                      color: Color.fromARGB(255, 235, 236, 236)),
                ],
              ),
            ),
          ),
        ],
      )
    ],
  );
}
