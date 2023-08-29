import 'package:app6/Screens/gangan.dart';
import 'package:app6/Screens/shamath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class waterdis extends StatefulWidget {
  const waterdis({Key? key}) : super(key: key);

  @override
  State<waterdis> createState() => _waterdisState();
}

class _waterdisState extends State<waterdis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 185, 221),
        elevation: 0,
        centerTitle: true,
        title: Text('WaterBodies'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => gangandis()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                width: 300,
                                height: 500,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(36),
                                  child: Image.asset(
                                    'assets/images/gangan.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => sham()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  width: 300,
                                  height: 500,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(36),
                                    child: Image.asset(
                                      'assets/images/mala.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => sham()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  width: 300,
                                  height: 500,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(36),
                                    child: Image.asset(
                                      'assets/images/tiplake.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => sham()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  width: 300,
                                  height: 500,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(36),
                                    child: Image.asset(
                                      'assets/images/nonvin.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  '<--Swipe For More--> ',
                  style: TextStyle(fontFamily: 'PTSansNarrow', fontSize: 22),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
