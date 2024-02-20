// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio/getInTouch.dart';
import 'package:portfolio/projects_and_certifications.dart';
import 'package:portfolio/skills_box.dart';
import 'package:portfolio/topbar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'carousel_and_blog.dart';
import 'intro_box.dart';

class desktop_screen_ui extends StatefulWidget {
  const desktop_screen_ui({super.key});

  @override
  State<desktop_screen_ui> createState() => _desktop_screen_uiState();
}

class _desktop_screen_uiState extends State<desktop_screen_ui> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        topbar(),

        SizedBox(
          height: 20,
        ),

        intro_box(),

        SizedBox(
          height: 20,
        ),
        //
        //

        carousel_and_blog_box(),
        //
        //
        //
        skills_box(),

        SizedBox(
          height: 20,
        ),
        projectBox(),

        certification(),
        SizedBox(
          height: 20,
        ),

        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 5,
          color: Color.fromARGB(255, 231, 231, 231),
        ),
        getInTouch(),
      ],
    )));
  }
}

Future<void> goToWebPage(String urlString) async {
  final Uri _url = Uri.parse(urlString);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
