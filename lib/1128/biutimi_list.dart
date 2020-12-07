import 'package:google_maps_flutter/google_maps_flutter.dart';

class BiutimiList {
  LatLng position;
  String image;
  String name;
  String text;
  bool tag1;
  bool tag2;
  bool tag3;

  BiutimiList({this.position, this.image, this.name, this.text, this.tag1, this.tag2, this.tag3});
}

List<BiutimiList> biutimiList = [
  BiutimiList(
    position: LatLng(30.7390, 76.7929),
    image: "assets/blu/blu.jpg",
    name: "Ronny joe",
    text: "Gym trainer",
    tag1: true,
    tag2: false,
    tag3: false,
  ),
  BiutimiList(
    position: LatLng(30.7367, 76.7950),
    image: "assets/blu/blu1.jpg",
    name: "Monika singla",
    text: "Gym trainer",
    tag1: true,
    tag2: true,
    tag3: false,
  ),
  BiutimiList(
    position: LatLng(30.7413, 76.7909),
    image: "assets/blu/blu2.jpg",
    name: "Raghav wadhwa",
    text: "Gym trainer",
    tag1: true,
    tag2: true,
    tag3: true,
  ),

  // center position
  BiutimiList(
    position: LatLng(37.50573803291112, 126.9531999345871),
    image: null,
    name: "Center",
    text: "Center",
    tag1: false,
    tag2: false,
    tag3: false,
  ),
];
