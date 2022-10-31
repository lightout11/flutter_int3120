import 'package:flutter/foundation.dart';
import 'package:learnflutter/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Hip-hop R&B Mix',
      songs: Song.songs,
      imageUrl:
          'https://i1.sndcdn.com/avatars-000345894917-8g35tx-t500x500.jpg',
    ),
    Playlist(
      title: 'US-UK Top Songs',
      songs: Song.songs,
      imageUrl:
          'https://avatar-ex-swe.nixcdn.com/playlist/share/2019/06/26/4/5/7/b/1561518269184.jpg',
    ),
  ];
}
