import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_app/utils/color.dart';
import 'package:math_app/view/screens/fast_increase.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: MyColors.bacroundColor),
      debugShowCheckedModeBanner: false,home: FastIncrease(),
      // initialRoute: startPage,
      // onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
