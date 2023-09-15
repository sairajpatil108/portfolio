import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
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
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
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
        projects_and_certifications(),
        SizedBox(
          height: 20,
        ),
        // Container(
        //   width: screenWidth * 0.8,
        //   height: 300,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     color: Color.fromARGB(255, 231, 231, 231),
        //   ),
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Chip(
        //           label: Text(
        //             'Experience',
        //             style: GoogleFonts.ptSerif(
        //                 fontSize: 15, fontWeight: FontWeight.w600),
        //           ),
        //           side: BorderSide(color: Colors.white),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 5,
          color: Color.fromARGB(255, 231, 231, 231),
        ),
        Container(
          width: screenWidth,
          height: 200,
          child: Column(
            children: [
              Chip(
                label: Text(
                  'Get in touch',
                  style: GoogleFonts.ptSerif(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                side: BorderSide(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(left: 30),
                child: Row(
                  children: [
                    Icon(Icons.call),
                    Text(
                      '  +91 8767069180',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mail),
                    ),
                    Text(
                      'sairajpatil108@gmail.com',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(left: 30),
                child: Row(
                  children: [
                    Icon(EvaIcons.linkedin),
                    Text(
                      '   sairajpatil108',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.42,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(EvaIcons.github),
                    ),
                    Text(
                      '  sairajpatil108',
                      style: GoogleFonts.ptSerif(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
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
