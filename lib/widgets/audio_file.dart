import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer? advancedPlayer;
  const AudioFile({super.key, this.advancedPlayer});

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = new Duration();
  Duration _position = new Duration();

  final String path = "https://filesamples.com/samples/audio/mp3/sample4.mp3";
  bool isPlaying = false;
  bool isPaused = false;
  bool isRepeat = false;
  Color color = Colors.white;
  List<IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.advancedPlayer!.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    this.widget.advancedPlayer!.onAudioPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });

    this.widget.advancedPlayer!.setUrl(path);
    this.widget.advancedPlayer!.onPlayerCompletion.listen((event) {
      setState(() {
        _position = Duration(seconds: 0);
        if (isRepeat == true) {
          isPlaying = true;
        } else {
          isPlaying = false;
          isRepeat = false;
        }
      });
    });
  }



  Widget btnStart() {
    return IconButton(
      padding: const EdgeInsets.only(bottom: 10),
      icon: isPlaying == false
          ? Icon(_icons[0],)
          : Icon(_icons[1],),
      iconSize: 70,
      onPressed: () {
        if (isPlaying == false) {
          this.widget.advancedPlayer!.play(path);
          setState(() {
            isPlaying = true;
          });
        } else if (isPlaying == true) {
          this.widget.advancedPlayer!.pause();
          setState(() {
            isPlaying = false;
          });
        }
      },
    );
  }

  Widget btnFast() {
    return IconButton(
      icon: Icon(Icons.skip_next),
      iconSize: 50,
      onPressed: () {
        this.widget.advancedPlayer!.setPlaybackRate(1.5);
      },
    );
  }

  Widget btnSlow() {
    return IconButton(
      icon: Icon(Icons.skip_previous),
      iconSize: 50,
      onPressed: () {
        this.widget.advancedPlayer!.setPlaybackRate(0.5);
      },
    );
  }

  Widget btnShuffle() {
    return IconButton(
      icon: Icon(Icons.shuffle),
      iconSize: 35,
      onPressed: () {},
    );
  }

  Widget btnRepeat() {
    return IconButton(
      icon: Icon(Icons.loop),
      iconSize: 35,
      color: color,
      onPressed: () {
        if (isRepeat == false) {
          this.widget.advancedPlayer!.setReleaseMode(ReleaseMode.LOOP);
          setState(() {
            isRepeat = true;
            color = Colors.black;
          });
        } else if (isRepeat == true) {
            this.widget.advancedPlayer!.setReleaseMode(ReleaseMode.RELEASE);
            color = Colors.white;
            isRepeat = false;
        }
      },
    );
  }

  Widget loadAsset() {
    return Container(
      child: Column(
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
      ),
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
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
          //padding: const EdgeInsets.only(left: 20, right: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _position.toString().split(".")[0],
                style: TextStyle(fontSize: 16),
              ),
              Text(
                _duration.toString().split(".")[0],
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        
        slider(),
        loadAsset(),
      ],
    ));
  }

  void changeToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    this.widget.advancedPlayer!.seek(newDuration);
  }
}
