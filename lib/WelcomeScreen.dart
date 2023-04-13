import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Tween<double> _scaleTween = Tween<double>(begin: 8, end: 1);

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFEEF5FC),
          body: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    child: TweenAnimationBuilder(
                      tween: _scaleTween,
                      duration: Duration(milliseconds: 800),
                      builder: (context, scale, child) {
                        return Transform.scale(
                          scale: scale,
                          child: child,
                        );
                      },
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF1B6DC1), shape: BoxShape.circle),
                          child: Center(child: Text("")),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          SvgPicture.asset(
                            "assets/images/houseandheart.svg",
                            height: 50.h,
                            width: 50.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/people.svg")
            ],
          )),
    );
  }
}
