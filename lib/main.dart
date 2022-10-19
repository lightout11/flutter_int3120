import 'package:flutter/material.dart';
import 'package:learnflutter/providers/album.dart';
import 'package:learnflutter/providers/albums.dart';
import './navigations/tabbar.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(
          create: (ctx) => Albums(),
        )
      ],
      child: MaterialApp(
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
          home: const Tabbar(),
          routes: {}),
    );
  }
}
