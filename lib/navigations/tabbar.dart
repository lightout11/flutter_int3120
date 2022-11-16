// import 'package:flutter/material.dart';
// import '../screens/home_screens/home.dart';
// import '../screens/library_screens/library_screen.dart';
// import '../screens/search_screens/search.dart';
// import '../screens/stream_screens/stream_music.dart';
// import '../screens/profile_screens/profile_view.dart';

// class Tabbar extends StatefulWidget {
//   const Tabbar({super.key});

//   @override
//   State<Tabbar> createState() => _TabbarState();
// }

// class _TabbarState extends State<Tabbar> {
//   int _selectedTab = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedTab,
//           onTap: (index) {
//             setState(() {
//               _selectedTab = index;
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.electric_bolt),
//               label: "Stream",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search_outlined),
//               label: "Search",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.library_music),
//               label: "Your Library",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: "Profile",
//             ),
//           ],
//         ),
//         body: Stack(
//           children: [
//             renderView(0, const HomeView()),
//             renderView(1, const StreamMusicView()),
//             renderView(2, const SearchView()),
//             renderView(3, const LibraryView()),
//             renderView(4, const ProfileView()),
//           ],
//         ));
//   }

//   Widget renderView(int tabIndex, Widget view) {
//     return IgnorePointer(
//         ignoring: _selectedTab != tabIndex,
//         child: Opacity(
//           opacity: _selectedTab == tabIndex ? 1 : 0,
//           child: view,
//         ));
//   }
// }
