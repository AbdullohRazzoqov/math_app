import 'package:flutter/material.dart';
import 'package:math_app/utils/color.dart';
import 'package:math_app/view/screens/home.dart';

class Kopaytiruv extends StatefulWidget {
  const Kopaytiruv({super.key});

  @override
  State<Kopaytiruv> createState() => _KopaytiruvState();
}

class _KopaytiruvState extends State<Kopaytiruv> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bacroundColor,
      body: Column(
        children: [
          const Expanded(child: Expanded(child: Text("10 X 20 = ?"))),
          Row(
            children: [
              ContainerWidget(
                  myText: 'asd', containerHeight: 50, containerWidget: 50)
            ],
          )
        ],
      ),
    );
  }
}
