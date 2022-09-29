import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/album_card.dart';
import '../albumPage/album_view.dart';
import 'package:learnflutter/widgets/user_card.dart';
import '../notificationPage/notification_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.upload_rounded,
                  color: Colors.grey[600], size: 30)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationView(),
                    ));
              },
              icon: Icon(Icons.notifications_outlined,
                  color: Colors.grey[600], size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // Album list 1
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 10, right: 0, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'More of what you like',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Suggestions based on what you\'ve liked or played',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      children: [
                        AlbumCard(
                            image: AssetImage('assets/album1.jpg'),
                            albumName: 'A\$ap Rocky Album',
                            albumNote: 'Related Tracks',
                            onTap: (_) {},
                            width: 140,
                            height: 180),
                        AlbumCard(
                            image: AssetImage('assets/album1.jpg'),
                            albumName: 'A\$ap Rocky Album',
                            albumNote: 'Related Tracks',
                            onTap: (_) {},
                            width: 140,
                            height: 180),
                        AlbumCard(
                            image: AssetImage('assets/album1.jpg'),
                            albumName: 'A\$ap Rocky Album',
                            albumNote: 'Related Tracks',
                            onTap: (_) {},
                            width: 140,
                            height: 180),
                        AlbumCard(
                            image: AssetImage('assets/album1.jpg'),
                            albumName: 'A\$ap Rocky Album',
                            albumNote: 'Related Tracks',
                            onTap: (_) {},
                            width: 140,
                            height: 180),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 20,
            color: Colors.grey[300],
          ),

          //Album list 2
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlbumView(
                    image: AssetImage('assets/badtrip_album.jpg'),
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, bottom: 5),
                    child: Text(
                      'SoundCloud Weekly',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, bottom: 5),
                    child: Text(
                      'All of SoundCloud. Just for you.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontFamily: 'Interstate',
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Card(
                        child: Image(
                            image: AssetImage('assets/badtrip_album.jpg'),
                            fit: BoxFit.fill),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 5, left: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/user_avatar.jpg'),
                          radius: 15,
                        ),
                        SizedBox(width: 5),
                        Text('Based on your listening history',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 20,
            color: Colors.grey[300],
          ),

          //Artist you should follow
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 5, right: 0, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Artists You Should Follow',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Based on your listening history',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),

                //Avatar + follow button
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //Artist 1
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              UserCard(
                                  image: AssetImage('assets/mck_avatar.PNG'),
                                  userName: 'MCK'),
                            ],
                          )),
                      //Artist 2
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              UserCard(
                                  image: AssetImage('assets/tyga_avatar.PNG'),
                                  userName: 'Tyga'),
                            ],
                          )),
                      //Artist 3
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              UserCard(
                                  image: AssetImage('assets/tlinh_avatar.PNG'),
                                  userName: 'Tlinh'),
                            ],
                          )),
                      //Artist 4
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              UserCard(
                                  image: AssetImage('assets/denvau_avatar.PNG'),
                                  userName: 'denvau'),
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
        ]),
      ),
    );
  }
}
