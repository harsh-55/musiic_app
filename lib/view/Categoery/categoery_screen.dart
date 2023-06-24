import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiic_app/music_player/musicPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../constants/colors.dart';
import '../../models/models.dart';


class Categoery_Screen extends StatefulWidget {
  const Categoery_Screen({super.key});

  @override
  State<Categoery_Screen> createState() => _Categoery_ScreenState();
}

class _Categoery_ScreenState extends State<Categoery_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                    IconButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.cardBackGroundColor,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: ColorConstants.inputHintColor, fontSize: 11),
                    prefixIcon: Icon(Icons.search,
                        color: !FocusScope.of(context).isFirstFocus
                            ? Colors.white
                            : ColorConstants.primaryColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: searchList
                        .map(
                          (search) => Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: ColorConstants.cardBackGroundColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                search,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              )),
                        )
                        .toList()),
                const SizedBox(height: 24),
                Text("Podcast’s",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 13),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: podCast.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        final podcast = podCast[index];

                        return Container(
                          decoration: BoxDecoration(
                              color: ColorConstants.cardBackGroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, top: 15, bottom: 0),
                          margin: const EdgeInsets.all(4),
                          width: 155,
                          height: 195,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 113,
                                width: 125,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(podcast['image']),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(podcast['title'],
                                  style: TextStyle(
                                    color: ColorConstants.starterWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(podcast['description'],
                                  style: TextStyle(
                                    color: ColorConstants.starterWhite,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 12),
                Text('Browse all',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 13),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Container(
                      width: size.width / 2.25,
                      height: 90,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            hexToColor('#E02FCF'),
                            hexToColor('#00C188'),
                          ])),
                      child: Text("Made For You",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      width: size.width / 2.25,
                      height: 90,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            hexToColor('#0A3CEC'),
                            hexToColor('#4DD4AC'),
                          ])),
                      child: Text("Charts",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      width: size.width / 2.25,
                      height: 90,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            hexToColor('#0A3CEC'),
                            hexToColor('#D9DD01'),
                          ])),
                      child: Text("Discover",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      width: size.width / 2.25,
                      height: 90,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            hexToColor('#0E31AE'),
                            hexToColor('#DD1010'),
                          ])),
                      child: Text("New Release",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 300,
                  child: TrackWidget(refresh),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: PlayerHome(currentSong),
                )
              ],
            ),
          ),
        ),
      ),
    );

    ///
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: SingleChildScrollView(
    //     physics: const BouncingScrollPhysics(),
    //     child: Container(
    //       height: h,
    //       width: w,
    //       margin: EdgeInsets.only(left: 10, right: 10),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const SizedBox(height: 50),
    //           Container(
    //             height: h * 0.06,
    //             width: w,
    //             color: Colors.white,
    //             child: TextField(
    //               decoration: InputDecoration(
    //                 hintText: "Search",
    //                 prefixIcon: Icon(UniconsLine.search),
    //                 border: InputBorder.none,
    //                 enabled: true,
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 20),
    //           Text("Most Played",
    //               style: GoogleFonts.alkatra(
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: h * 0.03)),
    //           Container(
    //             height: h * 0.17,
    //             width: w,
    //             color: Colors.red,
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
  refresh() {
    setState(() {});
  }

  Song currentSong = Song(
      name: "title",
      singer: "singer",
      image: "assets/images/song1.jpg",
      duration: 100,
      color: Colors.black);
  double currentSlider = 0;
}



///
class TrackWidget extends StatelessWidget {
  final Function() notifyParent;

  TrackWidget(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostPopular.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            currentSong = mostPopular[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: mostPopular[index].color,
                      blurRadius: 1,
                      spreadRadius: 0.3)
                ],
                image: DecorationImage(
                    image: AssetImage(mostPopular[index].image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostPopular[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostPopular[index].singer,
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  Song currentSong = Song(
      name: "title",
      singer: "singer",
      image: "assets/images/song1.jpg",
      duration: 100,
      color: Colors.black);
  double currentSlider = 0;
}


class PlayerHome extends StatefulWidget {
  final Song song;

  PlayerHome(this.song);

  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, _, __) => MusicPlayer(widget.song)));
      },
      child: Container(
        height: 130,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Hero(
                      tag: "image",
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.song.image),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.song.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text(widget.song.singer,
                            style: TextStyle(
                              color: Colors.white54,
                            ))
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.pause, color: Colors.white, size: 30),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.skip_next_outlined,
                        color: Colors.white, size: 30),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Duration(seconds: currentSlider.toInt())
                      .toString()
                      .split('.')[0]
                      .substring(2),
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 120,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 4,
                    ),
                    child: Slider(
                      value: currentSlider,
                      max: widget.song.duration.toDouble(),
                      min: 0,
                      inactiveColor: Colors.grey[500],
                      activeColor: Colors.white,
                      onChanged: (val) {
                        setState(() {
                          currentSlider = val;
                        });
                      },
                    ),
                  ),
                ),
                Text(
                  Duration(seconds: widget.song.duration)
                      .toString()
                      .split('.')[0]
                      .substring(2),
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}