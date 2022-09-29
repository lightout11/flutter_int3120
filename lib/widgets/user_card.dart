import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../views/userPage/user.dart';

class UserCard extends StatelessWidget {
  final ImageProvider? image;
  final String? userName;
  final Function? onTap;

  const UserCard({super.key, this.image, this.userName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserView(
              image: image,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5),
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
