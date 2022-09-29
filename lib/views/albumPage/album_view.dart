import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider? image;
  const AlbumView({super.key, this.image});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Playlist',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}
