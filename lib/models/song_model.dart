import 'package:flutter/cupertino.dart';

class SongItem {
  final String id;
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  SongItem({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
}

class Song with ChangeNotifier {
  // ignore: prefer_final_fields
  static List<SongItem> _items = [
    SongItem(
        id: '0',
        title: 'Waiting For You',
        description: 'Mono',
        url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/waiting_for_you.mp3',
        coverUrl: 'https://i.ytimg.com/vi/CHw1b_1LVBA/maxresdefault.jpg'),
    SongItem(
        id: '1',
        title: 'Anh Nhớ Ra',
        description: 'Vũ (feat. Trang)',
        url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/anh_nho_ra.mp3',
        coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg'),
    SongItem(
        id: '2',
        title: 'You Belong With Me',
        description: 'Taylor Swift',
        url: 'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/you_belong_with_me.mp3',
        coverUrl: 'https://media.glamour.com/photos/583dd6f566d6535c6894ec55/3:2/w_1382,h_921,c_limit/taylor%20swift.jpg'),
      
  ];

  List<SongItem> get items {
    return [..._items];
  }

  SongItem findById(String id) {
    return _items.firstWhere((song) => song.id == id);
  }
}
