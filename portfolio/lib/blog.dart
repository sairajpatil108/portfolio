// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class blog_box extends StatefulWidget {
  const blog_box({super.key});

  @override
  State<blog_box> createState() => blog_boxState();
}

// ignore: camel_case_types
class blog_boxState extends State<blog_box> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    List carousel_images = [
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
      {
        "id": 4,
        "imagepath":
            "D:/flutter/projects/portfolio/portfolio/lib/assets/images/20230920_145435-01.jpeg"
      },
    ];
    return SizedBox(
      height: 500,
      width: screenWidth * 0.9,
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.03,
          ),
          Container(
            // height: 380,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
              border: const Border(
                  bottom: BorderSide(width: 1, color: Colors.black),
                  top: BorderSide(width: 1, color: Colors.black),
                  left: BorderSide(width: 1, color: Colors.black),
                  right: BorderSide(width: 1, color: Colors.black)),
              // color: ColorScheme.light().primaryContainer,
              borderRadius: BorderRadius.circular(25).copyWith(
                  topLeft: const Radius.circular(0),
                  bottomRight: const Radius.circular(0)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 15),
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                  'Curious about me? Here you have it:',
                                  textStyle: GoogleFonts.ptSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  speed: const Duration(milliseconds: 100)),
                              // FadeAnimatedText('Curious about me? '),
                            ],
                            totalRepeatCount: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  //
                  //
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text:
                                    "Welcome to My Digital Odyssey: Sairaj Patil's Universe Unveiled! 🚀\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "\nHey there, fellow digital adventurers! 🌐 Buckle up, because you're about to embark on a journey through the realms of code, creativity, and a dash of my quirky world. I'm Sairaj Patil – your guide, fellow explorer, and the one with a passion for pixels and an insatiable appetite for all things tech. 🧙‍♂️"),
                          ],
                        ),
                      )),
                  //
                  //
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: "🎓 My Academic Ascent:\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "\nStarting my academic escapades in the vibrant halls of Podar International School, Latur, I've come a long way to where I am today – pursuing a B.Tech in Computer Science from the prestigious Pimpri Chinchwad College of Engineering, Pune. 📚 Those early days laid the foundation for my thirst for knowledge, and my journey through the years has been a tapestry of challenges, growth, and unyielding determination."),
                          ],
                        ),
                        //
                        //
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text:
                                    "✈️ Wanderlust and Whimsy – Beyond the Screen:\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "\nAs much as I adore pixels, there's more to life than lines of code. My heart races at the mere thought of venturing into uncharted territories – suitcase in hand and curiosity in my eyes. 🌍 Traveling is my way of collecting stories and memories,  each a testament to my unquenchable wanderlust. And when I'm not exploring the world, you'll find me huddled in deep discussions with fellow adventurers, unraveling the mysteries of life, universe, spirituality and everything. 🛋️🌌"),
                          ],
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: " A Glimpse into My Creative Realm! 🌟\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "\nBeyond the realms of coding and crafting user experiences, my world expands into a tapestry of passions that define the vibrant persona of Sairaj Patil. The melodies of music infuse rhythm into my coding endeavors, while brushes and pencils become my compass in the uncharted territory of art. From digital UIs to tangible canvases, my creative spirit finds expression, whether I'm orchestrating code symphonies, blending hues, or molding materials into intricate crafts. This fusion of art and technology isn't just a facet of my portfolio; it's the essence of my existence. Welcome to the realm where curiosity knows no boundaries and creativity paints the journey. 🎵🎨🚀"),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// final List<Map<String, String>> carouselImages = [
//   {"id": "2", "imagepath": "assets/images/IMG_20230819_14502664-01.jpeg"},
//   {"id": "3", "imagepath": "assets/images/IMG_20230819_09493568.jpg"},
//   {"id": "4", "imagepath": "assets/images/20230920_145435-01.jpeg"},
// ];

// class imageCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       child: CarouselSlider(
//         options: CarouselOptions(
//           autoPlay: true,
//           autoPlayInterval: const Duration(seconds: 10),
//           autoPlayAnimationDuration: const Duration(seconds: 1),
//           aspectRatio: 19 / 9, // Aspect ratio
//           viewportFraction: 0.5, // Fraction of the viewport width
//           enlargeCenterPage: true, // Makes the center item larger
//         ),
//         items: carouselImages.map((image) {
//           return Container(
//             margin: const EdgeInsets.symmetric(horizontal: 5.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20.0),
//               color: Colors.grey[300], // Example background color
//             ),
//             child: Image.asset(
//               image["imagepath"]!,
//               fit: BoxFit.cover,
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
