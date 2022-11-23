import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/playlist_model.dart';
import '../song_screens/song_screen.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  static const routeName = '/playlist';

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  //List<Song> songs = Song.songs;
  @override
  Widget build(BuildContext context) {
    final playListId = ModalRoute.of(context)?.settings.arguments as String;
    final playlists =
        Provider.of<Playlist>(context, listen: false).findById(playListId);
    //final songs = playlists.songs;
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
          title: const Text('Playlist'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                PlaylistInformation(playlist: playlists),
                const SizedBox(
                  height: 30,
                ),
                _PlayOrShuffleSwitch(playlist: playlists),
                _PlaylistSongs(playlist: playlists),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PlaylistSongs extends StatelessWidget {
  const _PlaylistSongs({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final PlaylistItem playlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playlist.songs.length,
      itemBuilder: ((context, index) {
        return ListTile(
            leading: Text(
              '${index + 1}',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            title: Text(
              playlist.songs[index].title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${playlist.songs[index].description}'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed( SongScreen.routeName,
                      arguments: playlist.songs[index].id);
                },
                icon: Icon(Icons.play_circle_fill)));
      }),
    );
  }
}

class _PlayOrShuffleSwitch extends StatefulWidget {
  const _PlayOrShuffleSwitch({Key? key, required this.playlist})
      : super(key: key);
final PlaylistItem playlist;
  @override
  State<_PlayOrShuffleSwitch> createState() => _PlayOrShuffleSwitchState();
}

class _PlayOrShuffleSwitchState extends State<_PlayOrShuffleSwitch> {
  bool isPlay = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
        Navigator.of(context).pushNamed(SongScreen.routeName,arguments: widget.playlist.songs[0].id);
      },
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isPlay ? 0 : width * 0.45,
              child: Container(
                height: 50,
                width: width * 0.45,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Play",
                          style: TextStyle(
                              color: isPlay ? Colors.white : Colors.deepOrange,
                              fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.play_circle,
                        color: isPlay ? Colors.white : Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shuffle",
                        style: TextStyle(
                            color: isPlay ? Colors.deepOrange : Colors.white,
                            fontSize: 17),
                      ),
                      Icon(
                        Icons.shuffle,
                        color: isPlay ? Colors.deepOrange : Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistInformation extends StatelessWidget {
  const PlaylistInformation({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final PlaylistItem playlist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            playlist.imageUrl,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          playlist.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
