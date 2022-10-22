import 'package:flutter/material.dart';
import 'package:learnflutter/models/album.dart';
import 'package:learnflutter/models/albums.dart';
import './navigations/tabbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
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
        home: const Tabbar(),
        routes: {});
  }
}
