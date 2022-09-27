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
        body:
            SingleChildScrollView(
            child: Column(
              children: [
                // Album list 1
                Container(
                //backgroundColor: Colors.green,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More of what you like',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                    Text(
                      'Suggestions based on what you\'ve liked or played',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontFamily: 'Interstate',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album1.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album2.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album3.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album4.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album5.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album6.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album7.jpg')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 15,
                  color: Colors.grey[300],
                ),

              // Album list 2
              Container(
                //backgroundColor: Colors.green,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recently Played',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album10.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album9.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album8.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album4.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album7.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album6.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album12.jpg')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Album list 3
              Container(
                //backgroundColor: Colors.green,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chill',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album5.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album7.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album3.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album4.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album8.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album6.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album12.jpg')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Album list 4
              Container(
                //backgroundColor: Colors.green,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Workout',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        fontFamily: 'Interstate',
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album13.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/top50.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album5.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album4.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album7.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album6.jpg')),
                            ),
                          ),
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image(image: AssetImage('assets/album12.jpg')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ] 
            ),
          ),
        )
        ;
  }
}