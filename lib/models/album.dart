import 'package:flutter/foundation.dart';

class Album {
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  bool? isFavorite = false;

  Album({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
