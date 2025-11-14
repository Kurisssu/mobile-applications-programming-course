import 'package:flutter/cupertino.dart';

class CompartmentItem {
  final String title;
  final ImageProvider image;
  final double width;
  final double height;

  const CompartmentItem({
    required this.title,
    required this.image,
    required this.width,
    required this.height,
  });
}

const double cardWidth = 181.5;
const double cardHeight = 150.0;
const double miniCardWidth = 120.0;
const double miniCardHeight = 140.0;