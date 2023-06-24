// import 'package:flutter/material.dart';
// import 'package:hidable/hidable.dart';
//
// class Home_Screen extends StatefulWidget {
//   const Home_Screen({super.key});
//
//   @override
//   State<Home_Screen> createState() => _Home_ScreenState();
// }
//
// class _Home_ScreenState extends State<Home_Screen> {
//
//   final colorsPath = [
//     Colors.green,
//     Colors.orangeAccent,
//     Colors.red,
//   ];
//
//   int index = 0;
//
//   final ScrollController scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: Hidable(
//         controller: scrollController,
//         child: AppBar(
//           backgroundColor: colorsPath[index].withOpacity(.6),
//           title: const Text('Hidable'),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
//         child: ListView.separated(
//           controller: scrollController,
//           itemCount: 15,
//           itemBuilder: (_, i) => _ListItem(),
//           separatorBuilder: (_, __) => const SizedBox(height: 10),
//         ),
//       ),
//       bottomNavigationBar: Hidable(
//         controller: scrollController,
//         wOpacity: true, // As default it's true
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed, // Fixed
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.black,
//           currentIndex: index,
//           onTap: (i) => setState(() => index = i),
//           items: bottomBarItems(),
//           backgroundColor: Colors.transparent,
//         ),
//       ),
//       floatingActionButton: Hidable(
//         controller: scrollController,
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: FloatingActionButton(
//             child: const Icon(Icons.label),
//             backgroundColor: colorsPath[index].withOpacity(.8),
//             onPressed: () {
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<BottomNavigationBarItem> bottomBarItems() {
//     return [
//       BottomNavigationBarItem(
//         label: 'Home',
//         icon: const Icon(Icons.home, color: Colors.white),
//         backgroundColor: colorsPath[0].withOpacity(.6),
//       ),
//       BottomNavigationBarItem(
//         label: 'Favorites',
//         icon: const Icon(Icons.favorite, color: Colors.white
//         ),
//         backgroundColor: colorsPath[1].withOpacity(.6),
//       ),
//       BottomNavigationBarItem(
//         label: 'Profile',
//         icon: const Icon(Icons.person, color: Colors.white),
//         backgroundColor: colorsPath[2].withOpacity(.6),
//       ),
//     ];
//   }
// }
//
// class _ListItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.grey.withOpacity(.4),
//         ),
//       ),
//       title: Align(
//         alignment: Alignment.topLeft,
//         child: Column(
//           children: [
//             Container(
//               height: 15,
//               width: MediaQuery.of(context).size.width / 2,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.grey.withOpacity(.5),
//               ),
//             ),
//             const SizedBox(height: 10),
//           ],
//         ),
//       ),
//       subtitle: Align(
//         alignment: Alignment.bottomLeft,
//         child: Column(
//           children: [
//             Container(
//               height: 10,
//               width: MediaQuery.of(context).size.width / 1.2,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.grey.withOpacity(.3),
//               ),
//             ),
//             const SizedBox(height: 5),
//             Container(
//               height: 10,
//               width: MediaQuery.of(context).size.width / 1.2,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.grey.withOpacity(.3),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:awesome_icons/awesome_icons.dart';
import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:musiic_app/view/Categoery/categoery_screen.dart';
import 'package:musiic_app/view/screens/home.dart';
import 'package:musiic_app/view/screens/profile_screen.dart';
import 'package:unicons/unicons.dart';


class Bottombar_Page extends StatefulWidget {
  const Bottombar_Page({super.key});

  @override
  State<Bottombar_Page> createState() => _Bottombar_PageState();
}

class _Bottombar_PageState extends State<Bottombar_Page> {
  int _index = 0;

  void onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  List pages = [
    Home_Screen(),
    Categoery_Screen(),
    Profile_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomBarBubble(
        color: Colors.white,
        selectedIndex: _index,
        height: 0.075 * h,
        backgroundColor: Colors.black,
        bubbleSize: 14,
        items: [
          BottomBarItem(
              iconBuilder: (color) {
                return Icon(FontAwesomeIcons.play, color: Colors.white);
              },
              iconSize: 10 * h),
          BottomBarItem(
              iconBuilder: (color) {
                return Icon(UniconsLine.headphones, color: Colors.white);
              },
              iconData: Icons.group_add,
              label: 'Explore',
              labelTextStyle: TextStyle(fontSize: 12),
              iconSize: 4 * h),
          BottomBarItem(
              iconBuilder: (color) {
                return Icon(UniconsLine.user, color: Colors.white);
              },
              label: 'Me',
              labelTextStyle: TextStyle(fontSize: 12),
              iconSize: 4 * h),
        ],
        onSelect: onTap,
      ),
    );
  }
}
