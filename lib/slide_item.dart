import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });
}
final slideList = [
  Slide(
    imageUrl: "assets/images/new7.jpg",
    title: "1st",
    description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting. Remaining essentially unchanged.",
  ),
  Slide(
    imageUrl: "assets/images/new8.jpg",
    title: "2nd",
    description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting. Remaining essentially unchanged.",
  ),
  Slide(
    imageUrl: "assets/images/new9.jpg",
    title: "3rd",
    description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting. Remaining essentially unchanged.",
  ),
  Slide(
    imageUrl: "assets/images/new10.jpg",
    title: "4th",
    description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting. Remaining essentially unchanged.",
  )
];