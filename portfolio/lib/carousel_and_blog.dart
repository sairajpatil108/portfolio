import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class carousel_and_blog_box extends StatefulWidget {
  const carousel_and_blog_box({super.key});

  @override
  State<carousel_and_blog_box> createState() => _carousel_and_blog_boxState();
}

class _carousel_and_blog_boxState extends State<carousel_and_blog_box> {
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
    return Container(
      height: 500,
      width: screenWidth * 0.9,
      child: Row(
        children: [
          Container(
            height: 450,
            width: screenWidth * 0.3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 10, 10),
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
                            aspectRatio: 1.3,
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
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
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
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
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
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
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
