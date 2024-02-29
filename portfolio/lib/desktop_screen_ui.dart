// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio/getInTouch.dart';
import 'package:portfolio/projects_and_certifications.dart';
import 'package:portfolio/skills_box.dart';
import 'package:portfolio/topbar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'blog.dart';
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

        blog_box(),
        //
        //
        //
        Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Divider(),
        ),
        //
        //
        //
        skills_box(),

        Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Divider(),
        ),

        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: projectBox(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: certification(),
        ),

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
