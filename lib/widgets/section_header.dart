import 'package:flutter/material.dart';
import 'package:learnflutter/screens/library_screens/library_screen.dart';
import 'package:learnflutter/screens/stream_screens/stream_music.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.action = 'View More',
  }) : super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            if (title == 'Trending Music' || title == 'Top Songs For You') {
              Navigator.of(context).pushNamed(StreamMusicView.routeName);
            } else {
              Navigator.of(context).pushNamed(LibraryView.routeName);
            }
          },
          child: Text(
            action,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
