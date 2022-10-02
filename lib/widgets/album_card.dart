import "package:flutter/material.dart";
import '../views/albumPage/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider? image;
  final String? albumName;
  final String? albumNote;
  final Function? onTap;
  final double? width;
  final double? height;
  const AlbumCard(
      {Key? key,
      this.image,
      this.albumName,
      this.albumNote,
      this.onTap,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 5, bottom: 5),
                  child: Card(
                    child: Image(image: image!),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  child: Text(
                    albumName!,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    albumNote!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
