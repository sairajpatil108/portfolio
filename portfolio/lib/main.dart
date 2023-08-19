import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    List carousel_images = [
      {
        "id": 1,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG20230715130934-01-01.jpeg"
      },
      {
        "id": 2,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG_20230819_14502664-01.jpeg"
      },
      {
        "id": 3,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/IMG_20230819_09493568.jpg"
      },
    ];
    final CarouselController carouselController = CarouselController();
    int current_index = 0;

    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      // theme: ThemeData.dark(),
      // theme: ThemeData(fontFamily: 'Tektur'),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),

      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(
        children: [
          topbar(), // contains the topmost bar with options of contact , skills, projects, etc

          SizedBox(
            height: 20,
          ),

          intro_box(),

          SizedBox(
            height: 20,
          ),
          Container(
            height: 500,
            width: screenWidth * 0.9,
            child: Row(
              children: [
                Container(
                  height: 450,
                  width: screenWidth * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 70, 10, 10),
                    child: Stack(
                      children: [
                        InkWell(
                            onTap: () {
                              print(current_index);
                            },
                            child: CarouselSlider(
                                items: carousel_images
                                    .map((item) => Image.asset(
                                          item['imagepath'],
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  autoPlay: true,
                                  aspectRatio: 2,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    setState(index, reason) {
                                      current_index = index;
                                    }

                                    ;
                                  },
                                )))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Container(
                  height: 450,
                  width: screenWidth * 0.54,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(25)
                        .copyWith(topLeft: Radius.circular(0)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        //
                        //
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 15),
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    'Curious about me? Here you have it:',
                                    textStyle: GoogleFonts.ptSerif(),
                                    speed: Duration(milliseconds: 100)),
                                // FadeAnimatedText('Curious about me? '),
                              ],
                              totalRepeatCount: 5,
                            ),
                          ),
                        ),
                        //
                        //
                        //
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                                ],
                              ),
                            )),
                            Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                                ],
                              ),
                            )),Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
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
      backgroundColor: Colors.white,
    );
  }
}
