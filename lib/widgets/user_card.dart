import 'package:flutter/material.dart';
import '../views/profilePage/profile.dart';

class UserCard extends StatelessWidget {
  final ImageProvider? image;
  final String? userName;
  final int? id;
  final Function? onTap;

  const UserCard({super.key, this.image, this.userName, this.onTap, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileView(
              image: image,
              id: id,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 61,
              child: CircleAvatar(
                backgroundImage: image,
                radius: 60,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(3),
              child: Text(userName!,
                  style: TextStyle(color: Colors.black, fontSize: 16))),
        ],
      ),
    );
  }
}
