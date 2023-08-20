import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/carousel_and_blog.dart';
import 'package:portfolio/intro_box.dart';
import 'package:portfolio/topbar.dart';

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

      home: Scaffold(
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
          Container(
            height: 250,
            width: screenWidth * 0.95,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Chip(
                    label: Text('Skills',
                        style: GoogleFonts.ptSerif(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.12,
                      ),
                      Container(
                        width: screenWidth * 0.08,
                        height: screenWidth * 0.08,
                        child: Image.asset(
                            'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-java-logo-96.png'),
                      ),
                      SizedBox(
                        width: screenWidth * 0.12,
                      ),
                      Container(
                        width: screenWidth * 0.08,
                        height: screenWidth * 0.08,
                        child: Image.asset(
                            'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-flutter-96.png'),
                      ),
                      SizedBox(
                        width: screenWidth * 0.12,
                      ),
                      //  Image.asset('D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-c-96.png'),
                      Container(
                        width: screenWidth * 0.08,
                        height: screenWidth * 0.08,
                        child: Image.asset(
                            'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-git-96.png'),
                      ),
                      SizedBox(
                        width: screenWidth * 0.12,
                      ),
                      Container(
                        width: screenWidth * 0.08,
                        height: screenWidth * 0.08,
                        child: Image.asset(
                            'D:/flutter/projects/portfolio/portfolio/lib/assets/images/icons8-security-lock-96.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.055,
                ),
                Container(
                  height: 500,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                        .copyWith(topRight: Radius.circular(0)),
                    color: Color.fromARGB(255, 231, 231, 231),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Chip(
                          label: Text(
                            'Projects',
                            style: GoogleFonts.ptSerif(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.07,
                ),
                Container(
                  height: 500,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20).copyWith(
                      topLeft: Radius.circular(0),
                    ),
                    color: Color.fromARGB(255, 231, 231, 231),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Chip(
                          label: Text(
                            'Certifications',
                            style: GoogleFonts.ptSerif(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: screenWidth * 0.8,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 231, 231, 231),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Chip(
                    label: Text(
                      'Experience',
                      style: GoogleFonts.ptSerif(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ))),
    );
  }
}

class mychip extends StatefulWidget {
  mychip({super.key, required this.title});
  var title;

  @override
  State<mychip> createState() => _mychipState();
}

class _mychipState extends State<mychip> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Colors.white),
      label: Text(
        widget.title,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
      ),
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
    );
  }
}
