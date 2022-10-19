import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  static const routeName = '/library_view';
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Library',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
    );
  }
}
