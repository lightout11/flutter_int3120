import 'package:flutter/material.dart';

import '../../widgets/user_card.dart';

class ProfileView extends StatefulWidget {
  final ImageProvider? image;
  final int? id;
  const ProfileView({super.key, this.image, this.id});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Profile User1',
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
            Container(
                height: 400,
                width: double.infinity,
                child: Column(children: [Container()]))
          ],
        )));
  }
}
