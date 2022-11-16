import 'package:flutter/material.dart';
import 'dart:math' as math;

class StreamMusicView extends StatefulWidget {
  const StreamMusicView({super.key});

  @override
  State<StreamMusicView> createState() => _StreamMusicViewState();
}

class _StreamMusicViewState extends State<StreamMusicView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepOrange.shade800.withOpacity(0.8),
            Colors.deepOrange.shade200.withOpacity(0.8)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Stream'),
        ),
        body: SingleChildScrollView(
          child: Center(child: Text('Stream here!'),)
        ),
      ),
    );
  }
}
