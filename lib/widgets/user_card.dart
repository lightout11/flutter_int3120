import 'package:flutter/material.dart';
import '../views/userPage/user.dart';

class UserCard extends StatefulWidget {
  final ImageProvider? image;
  final String? userName;
  final Function? onTap;
  bool isFollowed = false;

  UserCard({super.key, this.image, this.userName, this.onTap});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserView(
                  image: widget.image,
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
                    backgroundImage: widget.image,
                    radius: 60,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(3),
                  child: Text(widget.userName!,
                      style: TextStyle(color: Colors.black, fontSize: 16))),
            ],
          ),
        ),
        Container( 
            child: (widget.isFollowed == false)
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.isFollowed = !widget.isFollowed; 
                      });
                    },
                    child: Text('Follow',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                    ))
                : TextButton(
                    onPressed: () {
                      setState(() {
                        widget.isFollowed = !widget.isFollowed; 
                      });
                    },
                    child: Text('Following',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 14)),
                  )),
      ],
    );
  }
}