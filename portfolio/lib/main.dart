import 'package:flutter/material.dart';
import 'package:portfolio/ui_decider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      //
      //BREAKPOINT VARTICALLY IS 700
      //
      theme: ThemeData.light(useMaterial3: true),

      debugShowCheckedModeBanner: false,

      home: ui_decider(),
    );
  }
}
