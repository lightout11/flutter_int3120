import 'package:flutter/material.dart';

import '../screens/home_screens/home_screen.dart';
import '../screens/library_screens/library_screen.dart';
import '../screens/profile_screens/profile.dart';
import '../screens/stream_screens/stream_music.dart';

class CustomNavBar extends StatefulWidget {
  static const routeName = '/nav';
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade900,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.white,
         showUnselectedLabels: false,
         showSelectedLabels: false,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt),
            label: "Stream",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Your Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
            this.onTapHandler(index);
          },
      ),
      body: getBody(),
    );
  }
  
   Widget getBody() {
    if(selectedIndex == 0) {
      return const HomeView();
    } else if(selectedIndex== 1) {
      return const StreamMusicView();
    } else if(selectedIndex == 2) {
      return const LibraryView();
    } else {
      return const ProfileView();
    }
  }

  void onTapHandler(int index)  {
    setState(() {
      selectedIndex = index;
    });
  }

}
