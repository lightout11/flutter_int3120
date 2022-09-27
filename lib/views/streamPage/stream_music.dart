import 'package:flutter/material.dart';

class StreamMusicView extends StatefulWidget {
  const StreamMusicView({super.key});

  @override
  State<StreamMusicView> createState() => _StreamMusicViewState();
}

class _StreamMusicViewState extends State<StreamMusicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Stream',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
    );
  }
}
