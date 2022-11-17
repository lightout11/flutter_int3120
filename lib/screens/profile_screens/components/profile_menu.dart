import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.grey.shade200,
        ),
        onPressed: press,
        child: Row(
          
          children: [
            SvgPicture.asset(
              icon,
              color: Colors.deepOrange,
              width: 22,
            ),
            //Icon(Icons.photo),
            SizedBox(width: 20),
            Expanded(child: Text(text, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}