import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/song_model.dart';
import '../screens/song_screens/song_screen.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer? advancedPlayer;
  final SongItem song;
  const AudioFile({
    super.key,
    required this.advancedPlayer,
    required this.song,
  });

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = const Duration();
  Duration _position = const Duration();
  //final String path = widget.song.url;
  bool isPlaying = false;
  bool isPaused = false;
  bool isRepeat = false;
  Color color = Colors.white;
  final List<IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    widget.advancedPlayer!.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    widget.advancedPlayer!.onAudioPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });

    widget.advancedPlayer!.setUrl(widget.song.url);
    widget.advancedPlayer!.onPlayerCompletion.listen((event) {
      setState(() {
        _position = const Duration(seconds: 0);
        if (isRepeat == true) {
          isPlaying = true;
        } else {
          isPlaying = false;
          isRepeat = false;
        }
      });
    });
  }

  @override
  void dispose() {
    widget.advancedPlayer!.release();
    widget.advancedPlayer!.dispose();
    super.dispose();
  }

  Widget btnStart() {
    return IconButton(
      padding: const EdgeInsets.only(bottom: 10),
      icon: isPlaying == false
          ? Icon(
              _icons[0],
            )
          : Icon(
              _icons[1],
            ),
      iconSize: 70,
      onPressed: () {
        if (isPlaying == false) {
          widget.advancedPlayer!.play(widget.song.url);
          setState(() {
            isPlaying = true;
          });
        } else if (isPlaying == true) {
          widget.advancedPlayer!.pause();
          setState(() {
            isPlaying = false;
          });
        }
      },
    );
  }

  Widget btnFast() {
    return IconButton(
      icon: const Icon(Icons.skip_next),
      iconSize: 50,
      onPressed: () {
        //widget.advancedPlayer!.setPlaybackRate(1.5);
        widget.advancedPlayer!.pause();
        setState(() {
          isPlaying = false;
        });
        int i = 0;
        if (int.parse(widget.song.id!) == 10) {
          i = 0;
        } else {
          i = int.parse(widget.song.id!) + 1;
        }
        Navigator.of(context).pushReplacementNamed(SongScreen.routeName,arguments: i.toString());
      },
    );
  }

  Widget btnSlow() {
    return IconButton(
      icon: const Icon(Icons.skip_previous),
      iconSize: 50,
      onPressed: () {
        widget.advancedPlayer!.pause();
        setState(() {
          isPlaying = false;
        });
        int i = 0;
        if (int.parse(widget.song.id!) == 0) {
          i = 10;
        } else {
          i = int.parse(widget.song.id!) - 1;
        }
        Navigator.of(context).pushReplacementNamed(SongScreen.routeName,arguments: i.toString());
        // widget.advancedPlayer!.setPlaybackRate(0.5);
      },
    );
  }

  Widget btnShuffle() {
    return IconButton(
      icon: const Icon(Icons.shuffle),
      iconSize: 35,
      onPressed: () {},
    );
  }

  Widget btnRepeat() {
    return IconButton(
      icon: const Icon(Icons.loop),
      iconSize: 35,
      color: color,
      onPressed: () {
        if (isRepeat == false) {
          widget.advancedPlayer!.setReleaseMode(ReleaseMode.LOOP);
          setState(() {
            isRepeat = true;
            color = Colors.orange;
          });
        } else if (isRepeat == true) {
          widget.advancedPlayer!.setReleaseMode(ReleaseMode.RELEASE);
          color = Colors.white;
          isRepeat = false;
        }
      },
    );
  }

  Widget loadAsset() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //btnRepeat(),
            btnSlow(),
            btnStart(),
            btnFast(),
            //btnLoop(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            btnRepeat(),
            btnShuffle(),
          ],
        )
      ],
    );
  }

  Widget slider() {
    return Slider(
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
      value: _position.inSeconds.toDouble(),
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (double value) {
        setState(() {
          changeToSecond(value.toInt());
          value = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final songs = Provider.of<Song>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //padding: const EdgeInsets.only(left: 20, right: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _position.toString().split(".")[0],
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              _duration.toString().split(".")[0],
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        slider(),
        loadAsset(),
      ],
    );
  }

  void changeToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    widget.advancedPlayer!.seek(newDuration);
  }
}
