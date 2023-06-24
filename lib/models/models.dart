import 'dart:ui';

import 'package:flutter/material.dart';

class Models {
  String name;
  String imageurl;

  Models({
    required this.name,
    required this.imageurl,
  });
}

final List<Models> snkModels = [
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
  Models(
    name: "NIKE",
    imageurl: '',
  ),
];

final List<Map<String, dynamic>> podCast = [
  {
    "title" : "Impaulsive",
    "description" : "334 ep.",
    "image" : "assets/images/impaulsive.png",
  },
  {
    "title" : "TED Talks Daily",
    "description" : "155 ep.",
    "image" : "assets/images/tedTalk.png",
  },
  {
    "title" : "Mom’s Basement",
    "description" : "75 ep.",
    "image" : "assets/images/momsBasement.png",
  },
];


List<String> searchList = [
  'The Kid LAROI',
  'Drake',
  'Justin Bieber',
  'Joji',
  'Hip Hop',
  'Pop',
  'Top-Hits'
];

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  Song(
      {required this.name,
        required this.singer,
        required this.image,
        required this.duration,
        required this.color});
}



List<Song> mostPopular = [
  Song(
      name: "like it doesn't hurt",
      image: "assets/images/song1.jpg",
      singer: "Charle Cardin",
      duration: 300,
      color: Colors.grey),
  Song(
      name: "love on the brain",
      image: "assets/images/song2.jpg",
      singer: "Tvorchi",
      duration: 252,
      color: Colors.red),
  Song(
      name: "hail to the victor",
      image: "assets/images/song3.jpg",
      singer: "danito & athina",
      duration: 532,
      color: Colors.orange),
  Song(
      name: "idk",
      image: "assets/images/song4.jpg",
      singer: "ley you",
      duration: 264,
      color: Colors.blue)
];