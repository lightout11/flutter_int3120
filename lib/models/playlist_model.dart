import 'package:flutter/foundation.dart';
import 'package:learnflutter/models/song_model.dart';

class PlaylistItem {
  final String id;
  final String title;
  final List<SongItem> songs;
  final String imageUrl;

  PlaylistItem({
    required this.id,
    required this.title,
    required this.songs,
    required this.imageUrl,
  });
}

class Playlist with ChangeNotifier {
  // final String title;
  // final List<Song> songs;
  // final String imageUrl;

  // Playlist({
  //   required this.title,
  //   required this.songs,
  //   required this.imageUrl,
  // });

  // ignore: prefer_final_fields
  List<PlaylistItem> _items = [
    PlaylistItem(
      id: '0',
      title: 'Hip-hop R&B Mix',
      songs: [
        SongItem(
            id: '0',
            title: 'Waiting For You',
            description: 'Waiting For You',
            url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/waiting_for_you.mp3',
            coverUrl: 'https://i.ytimg.com/vi/CHw1b_1LVBA/maxresdefault.jpg'),
        SongItem(
            id: '1',
            title: 'Anh Nhớ Ra',
            description: 'Anh Nhớ Ra',
            url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/anh_nho_ra.mp3',
            coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg'),
      ],
      imageUrl: 'https://i1.sndcdn.com/avatars-000345894917-8g35tx-t500x500.jpg',
    ),
    PlaylistItem(
      id: '1',
      title: 'US-UK Top Songs',
      songs: [
        SongItem(
            id: '0',
            title: 'Waiting For You',
            description: 'Waiting For You',
            url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/waiting_for_you.mp3',
            coverUrl: 'https://i.ytimg.com/vi/CHw1b_1LVBA/maxresdefault.jpg'),
        SongItem(
            id: '1',
            title: 'Anh Nhớ Ra',
            description: 'Anh Nhớ Ra',
            url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/anh_nho_ra.mp3',
            coverUrl:'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg'),
        SongItem(
        id: '2',
        title: 'You Belong With Me',
        description: 'Taylor Swift',
        url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/you_belong_with_me.mp3',
        coverUrl: 'https://media.glamour.com/photos/583dd6f566d6535c6894ec55/3:2/w_1382,h_921,c_limit/taylor%20swift.jpg'),
      ],
      imageUrl:
          'https://avatar-ex-swe.nixcdn.com/playlist/share/2019/06/26/4/5/7/b/1561518269184.jpg',
    ),
  ];

  List<PlaylistItem> get items {
    return [..._items];
  }

  PlaylistItem findById(String id) {
    return _items.firstWhere((playlist) => playlist.id == id);
  }
}
