import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:test1/view/profilescreen/profilescreen.dart';
import 'package:test1/view/utilities/colors.dart';
import 'package:test1/view/widgets/container.dart';

class homescreen extends StatelessWidget {
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
          child: ListView(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeonText(
                      text: "HOME",
                      spreadColor: re,
                      blurRadius: 98,
                      textSize: 12,
                      textColor: re,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage("images/setting inverse 1_common.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "CRISTIANO",
                  style: TextStyle(
                    color: blu.withOpacity(0.8),
                    fontSize: 30.sp,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: <Shadow>[
                      // ignore: prefer_const_constructors
                      Shadow(
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 50.0,
                        color: const Color.fromARGB(255, 10, 9, 9),
                      ),
                      // ignore: prefer_const_constructors
                      Shadow(
                          offset: const Offset(1.0, 10.0),
                          blurRadius: 50.0,
                          color: const Color.fromARGB(255, 0, 255, 255)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "RONALDO",
                  style: TextStyle(
                    color: re.withOpacity(0.8),
                    fontSize: 30.sp,
                    // ignore: prefer_const_literals_to_create_immutables
                    shadows: <Shadow>[
                      // ignore: prefer_const_constructors
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 50.0,
                        color: Color.fromARGB(255, 248, 214, 214),
                      ),
                      // ignore: prefer_const_constructors
                      Shadow(
                          offset: Offset(1.0, 10.0),
                          blurRadius: 50.0,
                          color: const Color.fromARGB(255, 255, 0, 0)),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120.w,
                width: 60.w,
                child: Stack(
                  children: [
                    Positioned(
                      right: 18.h,
                      top: 5.h,
                      child: InkWell(
                          onTap: () {
                            Get.to(() => profilescreen());
                          },
                          child: containersss(
                              col: Colors.transparent, txt: "PROFILE")),
                    ),
                    Positioned(
                      top: 18.h,
                      left: 17.h,
                      child: containersss(col: Colors.transparent, txt: "2"),
                    ),
                    Positioned(
                      right: 18.h,
                      bottom: 16.h,
                      child: containersss(
                          col: Colors.transparent, txt: "WELLINESS"),
                    ),
                    Positioned(
                      bottom: 22.h,
                      left: 6.h,
                      child: containersss(col: Colors.transparent, txt: "MORE"),
                    ),
                    Positioned(
                      right: 7.h,
                      top: 12.h,
                      child:
                          containersss(col: Colors.transparent, txt: "SQUAD"),
                    ),
                    Positioned(
                      top: 12.h,
                      left: 6.h,
                      child:
                          containersss(col: Colors.transparent, txt: "EVENTS"),
                    ),
                    Positioned(
                      right: 7.h,
                      bottom: 22.h,
                      child: containersss(
                          col: Colors.transparent, txt: "ATTENDENCE"),
                    ),
                    Positioned(
                      left: 17.h,
                      top: 18.h,
                      child: ClipOval(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1.h),
                          child: ClipPath(
                              clipper: HexagonalClipper(),
                              child: Container(
                                height: 12.h,
                                width: 28.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("images/30soccer-ronaldo-1-76fd-jumbo.webp"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(1.h),
                                    color: yl),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
