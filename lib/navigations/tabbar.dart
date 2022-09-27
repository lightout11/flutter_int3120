import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../views/albums_view.dart';
import '../views/home.dart';
import '../views/library.dart';
import '../views/profile.dart';
import '../views/search.dart';
import '../views/stream_music.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              this._selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.electric_bolt),
              label: "Stream",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
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
        ),
        body: Stack(
          children: [
            RenderView(0, HomeView()),
            RenderView(1, StreamMusicView()),
            RenderView(2, SearchView()),
            RenderView(3, LibraryView()),
            RenderView(4, ProfileView()),
          ],
        ));
  }

  Widget RenderView(int _tabIndex, Widget view) {
    return IgnorePointer(
        ignoring: _selectedTab != _tabIndex,
        child: Opacity(
          opacity: _selectedTab == _tabIndex ? 1 : 0,
          child: view,
        ));
  }
}
