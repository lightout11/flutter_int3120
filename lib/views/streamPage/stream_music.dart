import 'package:flutter/material.dart';
import 'dart:math' as math;

class StreamMusicView extends StatefulWidget {
  const StreamMusicView({super.key});

  @override
  State<StreamMusicView> createState() => _StreamMusicViewState();
}

class _StreamMusicViewState extends State<StreamMusicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: 'Interstate')),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Post 1
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/denvau_avatar.PNG'),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('denvau posted a track',
                                    style: TextStyle(color: Colors.black)),
                                Text('15 days ago',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Card(
                            child: Image(
                                image: AssetImage(
                                    'assets/den_dienvientoi_song.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 20, bottom: 10, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.black,
                                height: 20,
                                child: Text(
                                  'denvau',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                color: Colors.black,
                                height: 20,
                                child: Text(
                                  'Đen - Diễn viên tồi ft. Thành Bùi, Cadilac',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_rounded, color: Colors.grey),
                          Text('300,303  ·  5:49',
                              style: TextStyle(color: Colors.grey)),
                          Spacer(),
                          Text(
                            '#Hip-hop & Rap',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                            Icons.favorite_border_rounded, color: Colors.grey,)),
                                    SizedBox(width: 5),
                                    Text(
                                      '4,771',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: Icon(Icons.comment_outlined,
                                            color: Colors.grey[600]),
                                      ),
                                      onTap: (() {
                                        print('comment');
                                      }),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '77',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.cloud_download_outlined,
                                          color: Colors.grey[600],
                                        )),
                                        SizedBox(width: 5),
                                    Text(
                                      '77',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Icon(Icons.more_horiz,
                              color: Colors.grey[600],)
                            ),
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
              ],
            ),

            //Post 2
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/tyga_avatar.PNG'),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tyga posted a track',
                                    style: TextStyle(color: Colors.black)),
                                Text('26 days ago',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Card(
                            child: Image(
                                image: AssetImage(
                                    'assets/tyga-fantastic-song.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 20, bottom: 10, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.black,
                                height: 20,
                                child: Text(
                                  'Tyga',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                color: Colors.black,
                                height: 20,
                                child: Text(
                                  'Tyga - Fanstatic',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_rounded, color: Colors.grey),
                          Text('86,969  ·  2:52',
                              style: TextStyle(color: Colors.grey)),
                          Spacer(),
                          Text(
                            '#Rap/Hip-Hop',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                            Icons.favorite_border_rounded, color: Colors.grey,)),
                                    SizedBox(width: 5),
                                    Text(
                                      '3,189',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: Icon(Icons.comment_outlined,
                                            color: Colors.grey[600]),
                                      ),
                                      onTap: (() {
                                        print('comment');
                                      }),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '93',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.cloud_download_outlined,
                                          color: Colors.grey[600],
                                        )),
                                        SizedBox(width: 5),
                                    Text(
                                      '108',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Icon(Icons.more_horiz,
                              color: Colors.grey[600],)
                            ),
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
              ],
            ),

            
          ],
        ),
      ),
    );
  }
}
