import 'dart:math';

import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(angle: pi * 0.25,
      child: Center(
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
                      angle: 2*pi - pi * 0.25,
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
    );
  }
}
