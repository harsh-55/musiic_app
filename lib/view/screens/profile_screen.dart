import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musiic_app/models/models.dart';
import 'package:musiic_app/view/screens/history_screen.dart';
import 'package:unicons/unicons.dart';

import 'artist_screen.dart';
import 'liabrary_screen.dart';
import 'offline_screen.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: Icon(
                UniconsLine.user_plus,
                size: h * 0.038,
              )),
          IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: Icon(Icons.notifications_none, size: h * 0.038)),
          IconButton(
              onPressed: () {
              },
              splashRadius: 20,
              icon: Icon(UniconsLine.cog, size: h * 0.038)),
          const SizedBox(
            width: 10
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: h * 0.24,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.purple.withOpacity(0.3),
                    radius: 35,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: h * 0.04,
                              color: Colors.grey,
                            )),
                        Text(
                          "Add",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    )),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "user7946139630974613",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: h * 0.028,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Profile >",
                    style: TextStyle(color: Colors.white,fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: h * 0.08,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 17),
                        height: h * 0.06,
                        width: w * 0.73,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pay ₹0 for 30 days of Premium.",
                              style: TextStyle(
                                color: Colors.orangeAccent.withOpacity(0.7),
                                fontSize: 15
                              ),
                            ),
                            Text("Claim the Free Trial now!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: IconButton(onPressed: () {

                        }, icon: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent.withOpacity(0.7),size: 22,)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
              height: h * 0.52,
              width: double.infinity,
              child:DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                        isScrollable: true,
                        labelStyle: TextStyle(fontSize: 16),
                        indicator: BoxDecoration(
                            color: Colors.black,
                            border: Border(
                                bottom:
                                BorderSide(width: 2, color: Color(0xFF899CCF)))),
                        tabs: [
                          Tab(text: "Liabrary"),
                          Tab(text: "Artists"),
                          Tab(text: "Offline"),
                          Tab(text: "History"),
                        ]),
                    Expanded(
                      child: TabBarView(
                          children: [
                            Liabrary_screen(),
                            Artist_Screen(),
                            Offline_Screen(),
                            History_Screen()
                      ]),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}


