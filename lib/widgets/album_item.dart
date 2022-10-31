// import "package:flutter/material.dart";
// import 'package:learnflutter/models/albums.dart';
// import '../models/playlist_model.dart';
// import '../screens/album_screens/album_view.dart';

// class AlbumItem extends StatelessWidget {
//   final String? imageUrl;
//   final String? title;
//   final String? description;
//   final Function? onTap;
//   const AlbumItem(
//       {Key? key,
//       this.imageUrl,
//       this.title,
//       this.description,
//       this.onTap,})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => AlbumView(
//               imageUrl: imageUrl,
//             ),
//           ),
//         );
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 180,
//             width: 140,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(right: 5, bottom: 5),
//                   child: Card(
//                     child: Image.network(imageUrl!),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
//                   child: Text(
//                     title!,
//                     style: const TextStyle(color: Colors.black),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(left: 5, right: 5),
//                   child: Text(
//                     description!,
//                     style: const TextStyle(color: Colors.grey),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
