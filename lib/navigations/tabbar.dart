import 'package:flutter/material.dart';
import '../views/home.dart';
import '../views/library.dart';
import '../views/user.dart';
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
            RenderView(0, const HomeView()),
            RenderView(1, const StreamMusicView()),
            RenderView(2, const SearchView()),
            RenderView(3, const LibraryView()),
            RenderView(4, const UserView()),
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
