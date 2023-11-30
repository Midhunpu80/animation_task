import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/utilities/colors.dart';
import 'package:test1/view/utilities/images.dart';

containersss({required Color col, required var txt}) {
  return Container(
    height: 12.h,
    width: 28.w,
    color: col,
    child: Stack(
      children: [
        SvgPicture.string(
          screen2,
          width: 500,
          height: 500,
        ),
        Center(
          child: Text(
            txt,
            style: TextStyle(
              color: blu.withOpacity(0.8),
              fontSize: 8.sp,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: <Shadow>[
                // ignore: prefer_const_constructors
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                // ignore: prefer_const_constructors
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(123, 0, 0, 255),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
