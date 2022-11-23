import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class SongItem {
  final String? id;
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  SongItem({
    this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'url': url,
        'coverUrl': coverUrl,
      };

  static SongItem fromJson(String docId, Map<String, dynamic> json) {
    return SongItem(
      id: docId,
      title: json['title'],
      description: json['description'],
      url: json['url'],
      coverUrl: json['coverUrl'],
    );
  }
}

class Song with ChangeNotifier {
  // ignore: prefer_final_fields
  static List<SongItem> _items = [
    SongItem(
      id: '0',
      title: 'Waiting For You',
      description: 'Mono',
      url:
          'https://data.chiasenhac.com/down2/2276/3/2275150-9f672b16/128/Waiting%20For%20You%20-%20MONO_%20Onionn.mp3',
      coverUrl: 'https://data.chiasenhac.com/data/cover/175/174241.jpg',
    ),
    SongItem(
      id: '1',
      title: 'Anh Nhớ Ra',
      description: 'Vũ (feat. Trang)',
      url:
          'https://data.chiasenhac.com/down2/2275/3/2274553-e0acda2c/128/Anh%20Nho%20Ra%20-%20Vu_%20Trang.mp3',
      coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg',
    ),
    SongItem(
      id: '2',
      title: 'You Belong With Me',
      description: 'Taylor Swift',
      url:
          'https://data51.chiasenhac.com/downloads/1004/3/1003977-57420886/128/You%20Belong%20With%20Me%20-%20Taylor%20Swift.mp3',
      coverUrl:
          'https://data.chiasenhac.com/data/artist_avatar/2/1555.jpg',
    ),
    SongItem(
      id: '3',
      title: 'Anti-Hero',
      description: 'Taylor Swift',
      url:
          'https://data.chiasenhac.com/down2/2276/3/2275197-b457c9fd/128/Anti-Hero%20-%20Taylor%20Swift.mp3',
      coverUrl:
          'https://data.chiasenhac.com/data/cover/175/174261.jpg',
    ),
    SongItem(
      id: '4',
      title: 'Typa Girl',
      description: 'BlackPink',
      url:
          'https://data.chiasenhac.com/down2/2275/3/2274502-c159de5b/128/Typa%20Girl%20-%20BlackPink.mp3',
      coverUrl:
          'https://data.chiasenhac.com/data/cover/175/174159.jpg',
    ),
    SongItem(
      id: '5',
      title: 'Head In The Clouds',
      description: 'Hayd',
      url:
          'https://data.chiasenhac.com/down2/2238/3/2237203-0d75d1b8/128/Head%20In%20the%20Clouds%20-%20Hayd.mp3',
      coverUrl:
          'https://data.chiasenhac.com/data/cover/160/159824.jpg',
    ),
  ];

  List<SongItem> get items {
    return [..._items];
  }

  List<SongItem> fetchAndSetSongs() {
    CollectionReference songs = FirebaseFirestore.instance.collection('songs');
    songs.snapshots().listen((snapshot) {
      final List<SongItem> _loadedItems = [];
      snapshot.docs.forEach((document) {
        _loadedItems.add(SongItem(
          id: document.id,
          title: document['title'],
          description: document['description'],
          url: document['url'],
          coverUrl: document['coverUrl'],
        ));
        _items = _loadedItems;
        //notifyListeners();
      });
    });
    return _items;
  }

  SongItem findById(String id) {
    return _items.firstWhere((song) => song.id == id);
  }
}
