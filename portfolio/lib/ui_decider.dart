// ignore_for_file: camel_case_types

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
    if (screenWidth < 700) {
      return const mobile_screen_ui();
    } else {
      return const desktop_screen_ui();
    }
  }
}
