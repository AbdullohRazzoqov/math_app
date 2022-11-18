import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_app/utils/color.dart';
import 'package:math_app/view/screens/home.dart';

class FastIncrease extends StatefulWidget {
  const FastIncrease({super.key});

  @override
  State<FastIncrease> createState() => _FastIncreaseState();
}

class _FastIncreaseState extends State<FastIncrease> {
  Random random = Random();
  int round = 0;

  @override
  Widget build(BuildContext context) {
    int numberOne = random.nextInt(10);
    int numberTwo = random.nextInt(10);
    List<int> variant = List.generate(3, (index) => Random().nextInt(numberTwo*numberOne));
    variant.add(numberOne*numberTwo);
    return Scaffold(
      backgroundColor: MyColors.bacroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "3/0",
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          Expanded(
            child: Center(
              child: Text(
                  "${numberOne} x ${numberTwo} = ?",
                  style: const TextStyle(fontSize: 50)),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ContainerWidget(
                          myText: '${variant[0]}',
                          containerHeight: 70,
                          containerWidget: 170),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ContainerWidget(
                          myText: '${variant[1]}',
                          containerHeight: 70,
                          containerWidget: 170),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ContainerWidget(
                          myText: '${variant[1]}',
                          containerHeight: 70,
                          containerWidget: 170),
                    ),
                    GestureDetector(
                      onTap: () {
                        if(variant[1] == numberOne*numberTwo){
                        }
                      },
                      child: ContainerWidget(
                          myText: '${variant[3]}',
                          containerHeight: 70,
                          containerWidget: 170),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
