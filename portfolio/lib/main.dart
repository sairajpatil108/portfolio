import 'package:flutter/material.dart';
import 'package:portfolio/ui_decider.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

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
