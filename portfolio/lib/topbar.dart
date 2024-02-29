// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/main.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class topbar extends StatefulWidget {
  const topbar({super.key});

  @override
  State<topbar> createState() => _topbarState();
}

class _topbarState extends State<topbar> {
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: 50,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: SizedBox()),
            ElevatedButton(
              child: Text('Contact'),
              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              child: Text('Skills'),
              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              child: Text('Projrcts'),
              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              child: Text('About'),
              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent.withOpacity(0.3),
              ),
              onPressed: themeNotifier.toggleTheme,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  themeNotifier.isDarkMode
                      ? Icons.dark_mode_rounded
                      : Icons.light_mode_rounded,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 200), // Change the size here
                //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // You can add more styling properties here
              ),
              child: Text('Download CV',
                  style: GoogleFonts.merriweather(
                      //color: Colors.white
                      )),
              // backgroundColor: Colors.black,
              onPressed: () async {
                await launch(
                    'https://drive.google.com/file/d/1tStmA69M8-AWkvOVZ7XLI1akQo6f7Caw/view?usp=drive_link');
              },
            ),
            SizedBox(
              width: screenHeight * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class mychip extends StatelessWidget {
  mychip({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: const BorderSide(
          // color: Colors.white
          ),
      label: Text(
        title,
        style: const TextStyle(
            // color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
      //   backgroundColor: const Color.fromARGB(255, 231, 231, 231),
    );
  }
}
