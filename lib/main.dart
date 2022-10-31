import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/models/playlist_model.dart';
import 'package:learnflutter/screens/home_screens/home_screen.dart';
import './navigations/tabbar.dart';
import 'screens/song_screeens/song_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.orange,
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
          ),
        ),
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),
        home: const HomeView(),
        getPages: [
          GetPage(name: '/', page: () => const HomeView()),
          GetPage(name: '/song', page: () => const SongScreen())
          //GetPage(name: '/playlist', page: () => const PlaylistScreen())
        ],
        );
  }
}
