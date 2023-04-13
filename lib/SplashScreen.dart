import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simplitnd/WelcomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, anotherAnimation) {
            return WelcomeScreen();
          },
        ),
      ),
    );
    Tween<double> _scaleTween = Tween<double>(begin: 1, end: 8);

    return Scaffold(
      backgroundColor: Color(0xFFEEF5FC),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: TweenAnimationBuilder(
                tween: _scaleTween,
                duration: Duration(milliseconds: 800),
                builder: (context, scale, child) {
                  return Transform.scale(
                    scale: scale,
                    child: child,
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF1B6DC1), shape: BoxShape.circle),
                  child: Center(child: Text("")),
                ),
              ),
            ),
          ),
          Positioned(
              child: Center(
                  child: SvgPicture.asset("assets/images/houseandheart.svg")))
        ],
      ),
    );
  }
}
