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

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiic_app/view/screens/home.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(seconds: asset.length * 10), curve: Curves.linear);
    });

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  List<String> asset = [
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png',
    'asset/5.png',
    'asset/6.jpg',
    'asset/7.png',
    'asset/8.png',
    'asset/9.png',
    'asset/10.png',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: StaggeredGridView.countBuilder(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 4,
                itemCount: asset.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image(
                    image: AssetImage(asset[index]),
                    fit: BoxFit.cover,
                  );
                },
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 4 : 2),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(1),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: FadeInUp(
                        child: Text(
                          "The 30 Most Stunning Movie\nPosters of 2019",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.actor(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (ctx) => const Home_Screen(),
                          ),
                        );
                      },
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 500),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("asset/100.jpg"),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 700),
                      child: Text(
                        "Zack Sharf",
                        style: GoogleFonts.actor(
                            color: Colors.white, fontSize: 17),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 900),
                      child: Text(
                        "Dec 12, 2019 11:00 am",
                        style: GoogleFonts.actor(
                            color: Colors.grey[300], fontSize: 15),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1000),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          Text(
                            "@zsharf",
                            style: GoogleFonts.actor(
                                color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
