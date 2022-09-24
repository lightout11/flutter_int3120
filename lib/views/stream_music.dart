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
        title: const Center(child: Text('Tracks')),
      ),
      body: const Center(
        child: Text('Tracks'),
      ),
    );
  }
}
