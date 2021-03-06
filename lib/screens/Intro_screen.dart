import 'package:flutter/material.dart';
import 'package:flutter_jaram_together/components/fade_route.dart';
import 'package:flutter_jaram_together/screens/newbie_setting_screen.dart';
import 'package:flutter_jaram_together/style/styles.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  double opacity = wopacity;
  double opacity2 = wopacity;
  double opacity3 = wopacity;
  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  changeOpacity() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity2 = 1.0;
      });
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity3 = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wmintCream,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedOpacity(
                opacity: opacity,
                duration: Duration(seconds: 1),
                child: Text(
                  '안녕하세요!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              AnimatedOpacity(
                opacity: opacity2,
                duration: Duration(seconds: 1),
                child: Text(
                  '당신의 팟을 찾아줄 너팟내팟 이예요.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  AnimatedOpacity(
                    opacity: opacity3,
                    duration: Duration(seconds: 1),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, FadeRoute(page: NewBieSettingScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '시작하기',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        decoration: BoxDecoration(
                          color: wskyBlueCrystal,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [wBoxshadow],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
