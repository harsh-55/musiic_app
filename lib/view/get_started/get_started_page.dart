// import 'package:flutter/material.dart';
//
// import '../../bottom_bar_page.dart';
//
// class GetStartedPage extends StatelessWidget {
//   const GetStartedPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('assets/images/getStarted.png'),
//               fit: BoxFit.cover),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 17,
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 32,
//             ),
//             MaterialButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(31)),
//               height: 58,
//               color: Colors.green,
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const Bottombar_Page())),
//               child: const Text(
//                 'Get Started',
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ),
//             const SizedBox(
//               height: 32,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

///

// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:musiic_app/view/screens/home.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
//
// class GetStartedPage extends StatefulWidget {
//   const GetStartedPage({super.key});
//
//   @override
//   State<GetStartedPage> createState() => _GetStartedPageState();
// }
//
// class _GetStartedPageState extends State<GetStartedPage> {
//
//   ScrollController scrollController = ScrollController();
//
//   @override
//   void initState() {
//     Future.delayed(const Duration(seconds: 1), () {
//       scrollController.animateTo(scrollController.position.maxScrollExtent,
//           duration: Duration(seconds: asset.length * 10), curve: Curves.linear);
//     });
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     scrollController.dispose();
//     super.dispose();
//   }
//
//   List<String> asset = [
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//     'asset/1.png',
//     'asset/2.png',
//     'asset/3.png',
//     'asset/4.png',
//     'asset/5.png',
//     'asset/6.jpg',
//     'asset/7.png',
//     'asset/8.png',
//     'asset/9.png',
//     'asset/10.png',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: SizedBox(
//         width: size.width,
//         height: size.height,
//         child: Stack(
//           children: [
//             SizedBox(
//               width: size.width,
//               height: size.height,
//               child: StaggeredGridView.countBuilder(
//                 controller: scrollController,
//                 physics: const BouncingScrollPhysics(),
//                 crossAxisCount: 4,
//                 itemCount: asset.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Image(
//                     image: AssetImage(asset[index]),
//                     fit: BoxFit.cover,
//                   );
//                 },
//                 staggeredTileBuilder: (int index) =>
//                     StaggeredTile.count(2, index.isEven ? 4 : 2),
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 width: size.width,
//                 height: size.height,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Colors.black.withOpacity(0),
//                       Colors.black.withOpacity(0),
//                       Colors.black.withOpacity(0),
//                       Colors.black.withOpacity(0.9),
//                       Colors.black.withOpacity(1),
//                     ],
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Padding(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                       child: FadeInUp(
//                         child: Text(
//                           "The 30 Most Stunning Songs\nPosters of 2020",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.actor(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: size.height * 0.025,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pushReplacement(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (ctx) => const Bottombar_Page(),
//                           ),
//                         );
//                       },
//                       child: FadeInUp(
//                         delay: const Duration(milliseconds: 500),
//                         child: const CircleAvatar(
//                           radius: 40,
//                           backgroundImage: AssetImage("asset/100.jpg"),
//                         ),
//                       ),
//                     ),
//                     FadeInUp(
//                       delay: const Duration(milliseconds: 700),
//                       child: Text(
//                         "Zack Sharf",
//                         style: GoogleFonts.actor(
//                             color: Colors.white, fontSize: 17),
//                       ),
//                     ),
//                     FadeInUp(
//                       delay: const Duration(milliseconds: 900),
//                       child: Text(
//                         "Dec 12, 2019 11:00 am",
//                         style: GoogleFonts.actor(
//                             color: Colors.grey[300], fontSize: 15),
//                       ),
//                     ),
//                     FadeInUp(
//                       delay: const Duration(milliseconds: 1000),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.person,
//                             color: Colors.grey,
//                           ),
//                           Text(
//                             "@zsharf",
//                             style: GoogleFonts.actor(
//                                 color: Colors.grey, fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: size.height * 0.03,
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

///

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:musiic_app/bottom_bar_page.dart';
import 'package:musiic_app/models/models.dart';
import 'package:musiic_app/view/screens/home.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10,
            left: -150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MyImageScrollerWidget(startingIndex: 0),
                MyImageScrollerWidget(startingIndex: 1),
                MyImageScrollerWidget(startingIndex: 2),
              ],
            ),
          ),
          const Positioned(
            top: 50,
            child: Text(
              "Music App",
              textScaleFactor: 2.0,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: h * 0.6,
              width: w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.white54,
                Colors.white,
                Colors.white
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    "The 30 Most Stunning Songs\nPosters of 2020",
                    textScaleFactor: 1.8,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Change the uality of your\nAppearance with MNIML Fashion now.",
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return Bottombar_Page();
                      },));
                    },
                    child: Container(
                      height: 70,
                      width: w * 0.8,
                      margin:
                          const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          textScaleFactor: 1.3,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyImageScrollerWidget extends StatefulWidget {
  final int startingIndex;

  const MyImageScrollerWidget({super.key, required this.startingIndex});

  @override
  State<MyImageScrollerWidget> createState() => _MyImageScrollerWidgetState();
}

class _MyImageScrollerWidgetState extends State<MyImageScrollerWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.minScrollExtent) {
        _autoScrollForward();
      } else if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        _autoScrollbackward();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScrollForward();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _autoScrollForward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  _autoScrollbackward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.minScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Transform.rotate(
      angle: 1.94 * pi,
      child: SizedBox(
        height: h * 0.9,
        width: w * 0.6,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: h * 0.55,
              margin: const EdgeInsets.only(right: 7, left: 7, top: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image:
                          AssetImage(modelImages[index + widget.startingIndex]),
                      fit: BoxFit.cover)),
            );
          },
        ),
      ),
    );
  }

  List<String> modelImages = [
    "assets/models/2.jpg",
    "assets/models/3.jpeg",
    "assets/models/4.jpg",
    "assets/models/5.jpg",
    "assets/models/6.jpeg",
    "assets/models/7.jpg",
    "assets/models/8.jpeg",
    "assets/models/9.avif",
    "assets/models/10.jpeg"
  ];
}
