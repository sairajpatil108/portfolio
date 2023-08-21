import 'package:flutter/material.dart';
import 'package:portfolio/desktop_screen_ui.dart';
import 'package:portfolio/mobile_screen_ui.dart';

class ui_decider extends StatefulWidget {
  const ui_decider({super.key});

  @override
  State<ui_decider> createState() => _ui_deciderState();
}

class _ui_deciderState extends State<ui_decider> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth < 700) {
      return mobile_screen_ui();
    } else {
      return desktop_screen_ui();
    }
  }
}
