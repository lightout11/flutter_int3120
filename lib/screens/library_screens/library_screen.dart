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
          title: const Text('Library'),
        ),
        body: SingleChildScrollView(
          child: Center(child: Text('library here!'),)
        ),
      ),
    );
  }
}
