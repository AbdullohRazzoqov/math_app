import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_app/utils/color.dart';
import 'package:math_app/view/screens/home.dart';
import 'package:math_app/view/widget/app_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  late Animation animation;
  late Animation sizeAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    animation = Tween<double>(begin: 0.0, end: pi *2.0).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });

    //     sizeAnimation = Tween<double>(begin: 50.0, end: 70.0).animate(animationController)..addListener(() { setState(() {
          
    //     });
    // });


    animationController.repeat();
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bacroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Image.asset(
            "assets/images/math.png",
            width: MediaQuery.of(context).size.width * 0.85,
          ),
      const     SizedBox(height: 20,),
       const 
          Text("Mental Game",style: TextStyle(fontFamily: "SplashFont",fontSize: 25,color: Colors.grey),),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
        Center(
      child: Transform.rotate(
        angle: animation.value,
        child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: 0,
                      child: Image.asset(
                        "assets/images/one.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Image.asset(
                      "assets/images/add.png",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/add1.png",
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      "assets/images/remove.png",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ],
            )),
      ),
    )
        ],
      ),
    );
  }
}
