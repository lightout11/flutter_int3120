import 'package:flutter/material.dart';

import '../../widgets/user_card.dart';
import '../loginPage/login.dart';

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
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('User',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                children: const [
                  UserCard(
                      image: AssetImage('assets/tlinh_avatar.PNG'),
                      userName: 'Username'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.grey[300],
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 0, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5, bottom: 5),
                    child: const Text(
                      'Latest tracks people you follow',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const UserCard(
                                    image: AssetImage('assets/mck_avatar.PNG'),
                                    userName: 'MCK'),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange[900],
                                    )),
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const UserCard(
                                    image:
                                        AssetImage('assets/tlinh_avatar.PNG'),
                                    userName: 'Tlinh'),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange[900],
                                    )),
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const UserCard(
                                    image: AssetImage('assets/tyga_avatar.PNG'),
                                    userName: 'Tyga'),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange[900],
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.grey[300],
            ),
            InkWell(
                // height: 400,
                // width: double.infinity,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: Column(children: [
                  Container(
                      padding: const EdgeInsets.only(
                          top: 20, left: 10, right: 0, bottom: 10),
                      child: Text('Logout',
                          style:
                              TextStyle(color: Colors.red[200], fontSize: 18))),
                ]))
          ],
        )));
  }
}
