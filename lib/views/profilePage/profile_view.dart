import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Your Profile',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
    );
  }
}