import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  final ImageProvider? image;
  const UserView({super.key, this.image});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('User Profile',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}