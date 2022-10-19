import "package:flutter/material.dart";
import 'package:learnflutter/providers/albums.dart';
import 'package:provider/provider.dart';
import '../providers/album.dart';
import '../screens/album_screens/album_view.dart';

class AlbumItem extends StatelessWidget {
  // final ImageProvider? image;
  // final String? albumName;
  // final String? albumNote;
  // final Function? onTap;
  // final double? width;
  // final double? height;
  // const AlbumCard(
  //     {Key? key,
  //     this.image,
  //     this.albumName,
  //     this.albumNote,
  //     this.onTap,
  //     this.width,
  //     this.height})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadedAlbum = Provider.of<Album>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              imageUrl: loadedAlbum.imageUrl,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 5, bottom: 5),
                  child: Card(
                    child: Image.network(loadedAlbum.imageUrl!),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  child: Text(
                    loadedAlbum.title!,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    loadedAlbum.description!,
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
