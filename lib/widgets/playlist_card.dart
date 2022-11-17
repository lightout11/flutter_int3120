import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/screens/playlist_screens/playlist_screen.dart';
import 'package:provider/provider.dart';

import '../models/playlist_model.dart' ;

class PlaylistCard extends StatelessWidget {
  final PlaylistItem playlist;

  const PlaylistCard({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  //inal Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PlaylistScreen.routeName, arguments: playlist.id);
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                playlist.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playlist.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${playlist.songs.length} songs',
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
