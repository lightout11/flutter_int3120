import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/playlist_card.dart';
import 'package:provider/provider.dart';

import '../../models/playlist_model.dart';

class LibraryView extends StatefulWidget {
  static const routeName = '/library_view';
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    final playlists = Provider.of<Playlist>(context);
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
              title: const Text('Library'),
            ),
            body: ListView.builder(
              itemBuilder: (context, index) =>
                  PlaylistCard(playlist: playlists.items[index]),
              itemCount: playlists.items.length,
            )));
  }
}
