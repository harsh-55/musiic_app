import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            PageView.builder(
              //  itemCount: children.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 0.7, 0.3, 5],
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/background.jpg",
                          fit: BoxFit.cover,
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 50, right: 20, left: 20),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Spacer(),
                          Container(
                            height: h * 0.28,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Without Me",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontSize: h * 0.028),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Halsey",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                          fontSize: h * 0.022),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: h * 0.026,
                                      width: w * 0.15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.5))),
                                      child: Center(
                                        child: Text(
                                          "Follow",
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                              fontSize: h * 0.015),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          UniconsLine.heart,
                                          color: Colors.white,
                                          size: h * 0.043,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          UniconsLine.comment_dots,
                                          color: Colors.white,
                                          size: h * 0.043,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.send,
                                          color: Colors.white,
                                          size: h * 0.043,
                                        )),
                                    const SizedBox(width: 30),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          UniconsLine.import,
                                          color: Colors.white.withOpacity(0.7),
                                          size: h * 0.043,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          UniconsLine.align,
                                          color: Colors.white.withOpacity(0.7),
                                          size: h * 0.043,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: Colors.white.withOpacity(0.7),
                                          size: h * 0.043,
                                        )),
                                  ],
                                ),
                                const SizedBox(height: 3),
                                Slider(
                                  activeColor: Colors.grey,
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 8,
                                  label: _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
              child: Container(
                height: h * 0.05,
                width: w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "For You 🡳",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.search,
                          color: Colors.white,
                          size: w * 0.08,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
