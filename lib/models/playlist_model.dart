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
          description: 'Mono (feat. Onionn)',
          url:
              'https://data.chiasenhac.com/down2/2276/4/2275150-9f672b16/128/Waiting%20For%20You%20-%20MONO_%20Onionn.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/175/174241.jpg',
        ),
        SongItem(
          id: '6',
          title: 'Em Là',
          description: 'Mono',
          url:
              'https://data.chiasenhac.com/down2/2276/5/2275144-a6d75b68/128/Em%20La%20-%20MONO_%20Onionn.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/175/174241.jpg',
        ),
        SongItem(
          id: '1',
          title: 'Anh Nhớ Ra',
          description: 'Vũ (feat. Trang)',
          url:
              'https://data.chiasenhac.com/down2/2275/5/2274553-e0acda2c/128/Anh%20Nho%20Ra%20-%20Vu_%20Trang.mp3',
          coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg',
        ),
      ],
      imageUrl:
          'https://i1.sndcdn.com/avatars-000345894917-8g35tx-t500x500.jpg',
    ),
    PlaylistItem(
      id: '1',
      title: 'US-UK Top Songs',
      songs: [
        SongItem(
          id: '0',
          title: 'Waiting For You',
          description: 'Mono (feat. Onionn)',
          url:
              'https://data.chiasenhac.com/down2/2276/4/2275150-9f672b16/128/Waiting%20For%20You%20-%20MONO_%20Onionn.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/175/174241.jpg',
        ),
        SongItem(
            id: '1',
            title: 'Anh Nhớ Ra',
            description: 'Anh Nhớ Ra',
            url:
                'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/anh_nho_ra.mp3',
            coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg'),
        SongItem(
            id: '2',
            title: 'You Belong With Me',
            description: 'Taylor Swift',
            url:
                'https://raw.githubusercontent.com/ductuanUET/hosting_files/master/you_belong_with_me.mp3',
            coverUrl:
                'https://media.glamour.com/photos/583dd6f566d6535c6894ec55/3:2/w_1382,h_921,c_limit/taylor%20swift.jpg'),
        SongItem(
          id: '3',
          title: 'Anti-Hero',
          description: 'Taylor Swift',
          url:
              'https://data.chiasenhac.com/down2/2276/5/2275197-b457c9fd/128/Anti-Hero%20-%20Taylor%20Swift.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/175/174261.jpg',
        ),
        SongItem(
          id: '5',
          title: 'Head In The Clouds',
          description: 'Hayd',
          url:
              'https://data.chiasenhac.com/down2/2238/5/2237203-0d75d1b8/128/Head%20In%20the%20Clouds%20-%20Hayd.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/160/159824.jpg',
        ),
        SongItem(
          id: '7',
          title: 'I\'m Good (Blue)',
          description: 'David Guetta',
          url:
              'https://data.chiasenhac.com/down2/2274/5/2273537-7649156f/128/I_m%20Good%20Blue_%20-%20David%20Guetta_%20Bebe%20Rexh.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/174/173797.jpg',
        ),
        SongItem(
          id: '8',
          title: 'Unstoppable',
          description: 'Sia',
          url:
              'https://data2.chiasenhac.com/stream2/1620/5/1619524-39627886/128/Unstoppable%20-%20Sia.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/53/52345.jpg',
        ),
        SongItem(
          id: '9',
          title: 'Titanium',
          description: 'David Guetta, Sia',
          url:
              'https://data52.chiasenhac.com/downloads/1054/5/1053300-4d74960f/128/Titanium%20-%20David%20Guetta_%20Sia.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/4/3473.jpg',
        ),
        SongItem(
          id: '10',
          title: 'Wake Me Up',
          description: 'Avicii, Aloe Blacc',
          url:
              'https://data16.chiasenhac.com/downloads/1463/5/1462534-47e1d950/128/Wake%20Me%20Up%20-%20Avicii_%20Aloe%20Blacc.mp3',
          coverUrl: 'https://data.chiasenhac.com/data/cover/39/38156.jpg',
        ),
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

  List<PlaylistItem> getTopPlaylist() {
    return _items.sublist(0, 2);
  }
}
