//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/widgets/audio_file.dart';
import 'package:provider/provider.dart';
//import 'package:just_audio/just_audio.dart';
//import 'package:rxdart/rxdart.dart' as rxdart;
import '../../models/song_model.dart';
import 'package:audioplayers/audioplayers.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  static const routeName = '/song';

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen>
    with SingleTickerProviderStateMixin {
  // Song song = Get.arguments ?? Song.songs[0];
  AudioPlayer? advancedPlayer;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  // void didChangeDependencies() {
    
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final songId = ModalRoute.of(context)?.settings.arguments as String;
    final song = Provider.of<Song>(context, listen: false).findById(songId);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              song.coverUrl,
              fit: BoxFit.cover,
            ),
            const _BackgroundFilter(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    song.description,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AudioFile(advancedPlayer: advancedPlayer!, song: song),
                ],
              ),
            )
          ],
        ));
  }
}

class _BackgroundFilter extends StatelessWidget {
  const _BackgroundFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.0),
            ],
            stops: const [
              0.0,
              0.4,
              0.6
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey.shade700, Colors.black],
          ),
        ),
      ),
    );
  }
}
