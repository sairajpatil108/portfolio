// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class topBarMobile extends StatefulWidget {
  const topBarMobile({super.key});

  @override
  State<topBarMobile> createState() => _topBarMobileState();
}

class _topBarMobileState extends State<topBarMobile> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                child: InkWell(
                  onTap: () async {
                    // ignore: deprecated_member_use
                    await launch(
                        'https://drive.google.com/file/d/1tStmA69M8-AWkvOVZ7XLI1akQo6f7Caw/view?usp=drive_link');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     // color: Colors.black,
                    ),
                    height: 40,
                    width: 120,
                    child: Center(
                        child: Text(
                      'Download CV',
                      style: GoogleFonts.ptSerif(
                        //color: Colors.white
                        ),
                    )),
                  ),
                ),
              )
            ],
          );
  }
}