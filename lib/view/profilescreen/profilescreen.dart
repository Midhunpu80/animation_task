import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/utilities/colors.dart';
import 'package:test1/view/utilities/images.dart';
import 'package:test1/view/widgets/Eliteevolutionsection.dart';
import 'package:test1/view/widgets/Profile.dart';
import 'package:test1/view/widgets/appbar.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Background_screen1.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            appbars(),
            profilebiodata(),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 3.h,
              width: 80.w,
              child: SvgPicture.string(
                screen1,
                width: 500,
                height: 500,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "ELITE EVOULUTION",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 21, 0),
                  fontSize: 8.sp,
                  letterSpacing: 5,
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
            SizedBox(
              height: 2.h,
            ),
          Container(
              height: 3.h,
              width: 80.w,
              child: SvgPicture.string(
                screen1,
                width: 500,
                height: 500,
              ),
            ),
            eliteevolutionsection(),
             Container(
              height: 3.h,
              width: 80.w,
              child: SvgPicture.string(
                screen1,
                width: 500,
                height: 500,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "STATS",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 11.sp,
                  letterSpacing: 6,
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
                        color: Color.fromARGB(255, 253, 3, 3)),
                  ],
                ),
              ),
            ),
            
            
            
          ],
        ),
      ),
    );
  }
}
