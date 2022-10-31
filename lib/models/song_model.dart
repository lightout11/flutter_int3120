class Song  {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Waiting For You',
      description: 'Waiting For You',
      url: 'assets/audio/waiting_for_you.mp3',
      coverUrl: 'https://i.ytimg.com/vi/CHw1b_1LVBA/maxresdefault.jpg'
    ),
    Song(
      title: 'Anh Nhớ Ra',
      description: 'Anh Nhớ Ra',
      url: 'assets/audio/anh_nho_ra.mp3',
      coverUrl: 'https://i.ytimg.com/vi/11XkLOIsLHI/maxresdefault.jpg'
    ),
  ];
}