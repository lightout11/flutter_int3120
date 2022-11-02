import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/models/song_model.dart';
import 'package:learnflutter/screens/home_screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'models/playlist_model.dart';
import 'screens/playlist_screens/playlist_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Playlist()),
        ChangeNotifierProvider(create: (ctx) => Song()),
      ],
      child: MaterialApp(
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
        routes: {
          PlaylistScreen.routeName: (context) => const PlaylistScreen(),
          SongScreen.routeName: (context) => const SongScreen(),

          // GetPage(name: '/', page: () => const HomeView()),
          // GetPage(name: '/song', page: () => const SongScreen()),
          // GetPage(name: '/playlist', page: () => const PlaylistScreen())
        },
      ),
    );
  }
}
