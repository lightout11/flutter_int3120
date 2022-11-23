import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:learnflutter/widgets/song_card.dart';
import 'package:provider/provider.dart';

import '../../models/song_model.dart';

class StreamMusicView extends StatefulWidget {
  static String routeName = "/stream-music";
  const StreamMusicView({super.key});

  @override
  State<StreamMusicView> createState() => _StreamMusicViewState();
}

class _StreamMusicViewState extends State<StreamMusicView> {
  @override
  Widget build(BuildContext context) {
    final songs = Provider.of<Song>(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.grey.shade700, Colors.black],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Stream'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return SongCard(song: songs.items[index]);
          },
          itemCount: songs.items.length,
        ),
      ),
    );
  }
}
