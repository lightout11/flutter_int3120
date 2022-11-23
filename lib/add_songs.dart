// import 'package:flutter/material.dart';

// // Import the firebase_core and cloud_firestore plugin
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddSongs extends StatelessWidget {
//   // final String fullName;
//   static const routeName = 'add-songs';

//   // final String company;
//   // final int age;

//   // AddUser(this.fullName, this.company, this.age);

//   @override
//   Widget build(BuildContext context) {
//     // Create a CollectionReference called users that references the firestore collection
//     CollectionReference songs = FirebaseFirestore.instance.collection('songs');
//     final titleController = TextEditingController();
//     final titleController = TextEditingController();
//     final titleController = TextEditingController();
//     final titleController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text('Add Songs'),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             decoration: const InputDecoration(
//               hintText: 'title',
//               labelText: 'title',
//             ),
//             controller: titleController,
//           ),
//           SizedBox(height: 20),
//           TextField(
//             decoration: const InputDecoration(
//               hintText: 'description',
//               labelText: 'description',
//             ),
//             controller: titleController,
//           ),
//           SizedBox(height: 20),
//           TextField(
//             decoration: const InputDecoration(
//               hintText: 'url',
//               labelText: 'url',
//             ),
//             controller: titleController,
//           ),
//           SizedBox(height: 20),
//           TextField(
//             decoration: const InputDecoration(
//               hintText: 'coverUrl',
//               labelText: 'coverUrl',
//             ),
//             controller: titleController,
//           ),
//           SizedBox(height: 20),
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               "Add Song",
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
