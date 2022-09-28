import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined,
                  color: Colors.grey[600], size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // Album list 1
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 5, right: 10, bottom: 10),
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
                  padding:EdgeInsets.only(left: 5, bottom: 5),
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
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),
                    ],
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

          // Album list 2
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 5, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Recently Played',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                // Container(
                //   padding:EdgeInsets.only(left: 5, bottom: 5),
                //   child: Text(
                //     'Suggestions based on what you\'ve liked or played',
                //     style: TextStyle(
                //       fontSize: 15,
                //       color: Colors.grey[600],
                //       fontFamily: 'Interstate',
                //     ),
                //   ),
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),
                    ],
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

          // Album list 3
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 5, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Charts: New & hot',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    'Up-and-comming tracks on SoundCloud',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontFamily: 'Interstate',
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Image(
                                      image: AssetImage('assets/album1.jpg')),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'A\$ap Rocky Album',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Related Tracks',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),            
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 20,
            color: Colors.grey[300],
          )   
        ]),
      ),
    );
  }
}
