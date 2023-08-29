import 'package:app6/Screens/shamath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final Controller = PageController();
  bool islastpg = false;
  void dispose() {
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Container(
          child: PageView(
            controller: Controller,
            onPageChanged: (index) {
              setState(() => islastpg = index == 2);
            },
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 40),
                        child: Container(
                          alignment: Alignment.center,
                          width: 400,
                          height: 400,
                          child: Lottie.asset(
                            'assets/ani/coco.json',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 30, left: 32),
                      child: Container(
                        alignment: Alignment.center,
                        child: Center(
                          child: Text(
                            'Let Your family and friends know what is near Tipturu!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'PTSansNarrow',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                color: Color.fromARGB(255, 227, 221, 213),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Container(
                          alignment: Alignment.center,
                          width: 300,
                          height: 300,
                          child: Lottie.asset(
                            'assets/ani/farm.json',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 80, right: 30, left: 32),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Did you know that our Tiptur has the biggest Copra market in Asia!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PTSansNarrow'),
                        ),
                      ),
                    )
                  ],
                ),
                color: Color.fromARGB(255, 230, 238, 222),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 250),
                        child: Container(
                          alignment: Alignment.center,
                          width: 400,
                          height: 300,
                          child: Lottie.asset(
                            'assets/ani/yo.json',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 219, 236, 233),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Color.fromARGB(0, 144, 66, 66),
        height: 60,
        child: Center(
            child: (islastpg)
                ? InkWell(
                    splashColor: Color.fromARGB(255, 204, 227, 205),
                    onTap: (() async {
                      setState(() {});
                      await Future.delayed(Duration(milliseconds: 500));
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sham()));
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 24,
                            wordSpacing: 3,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'PTSansNarrow'),
                      ),
                    ),
                  )
                : SmoothPageIndicator(
                    controller: Controller,
                    count: 3,
                    effect: WormEffect(
                        spacing: 15,
                        activeDotColor: Color.fromARGB(255, 189, 214, 234),
                        dotColor: Color.fromARGB(255, 122, 121, 121),
                        dotHeight: 15,
                        dotWidth: 15,
                        strokeWidth: 1),
                  )),
      ),
    );
  }
}
