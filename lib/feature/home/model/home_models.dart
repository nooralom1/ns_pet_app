import 'package:flutter/material.dart';

class Educational {
  final String image;
  final String name;
  final Color bgColor;
  Educational({required this.image, required this.name, required this.bgColor});
}

class PFasshion {
  final String image;
  final String price;
  final String name;
  bool isFavorite;

  PFasshion({
    required this.image,
    required this.name,
    required this.price,
    required this.isFavorite,
  });
}
