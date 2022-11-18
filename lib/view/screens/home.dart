
import 'package:flutter/material.dart';
import 'package:math_app/utils/color.dart';
import 'package:math_app/view/screens/fast_increase.dart';
import 'package:math_app/view/widget/app_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.bacroundColor,
        body: Center(
          child: Column(
            
            children: [
              
            const      AppIconWidget()     ,const SizedBox(
                height: 150,
              ),
              InkWell(onTap: () =>  Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const FastIncrease(),
            ),
          ),
                child: ContainerWidget(
                  myText: "PLAY",
                  containerWidget: 300,
                  containerHeight: 70,
                ),
              ),
              ContainerWidget(
                myText: "ALL GAME",
                containerWidget: 300,
                containerHeight: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerWidget(
                    myText: "ALL GAME",
                    containerWidget: 145,
                    containerHeight: 70,
                  ),
                  ContainerWidget(
                    myText: "ALL GAME",
                    containerWidget: 145,
                    containerHeight: 70,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class ContainerWidget extends StatelessWidget {
  ContainerWidget({
    Key? key,
    required this.myText,
    required this.containerHeight,
    required this.containerWidget,
  }) : super(key: key);
  String myText;
  double containerHeight;
  double containerWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: containerWidget,
      height: containerHeight,
      decoration: BoxDecoration(
        color: MyColors.bacroundColor,
        boxShadow: const [
          BoxShadow(
            color: MyColors.black,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
        border: Border.all(width: 1, color: MyColors.black),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
          child: Text(
        myText,
        style: const TextStyle(fontSize: 25, color: Colors.grey),
      )),
    );
  }
}
