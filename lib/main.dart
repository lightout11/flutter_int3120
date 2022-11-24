import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/add_songs.dart';
import 'package:learnflutter/firebase_options.dart';
import 'package:learnflutter/main_page.dart';
import 'package:learnflutter/models/song_model.dart';
import 'package:learnflutter/navigations/custom_nav_bar.dart';
import 'package:learnflutter/screens/complete_profile_screens/complete_profile.dart';
import 'package:learnflutter/screens/home_screens/home_screen.dart';
import 'package:learnflutter/screens/library_screens/library_screen.dart';
import 'package:learnflutter/screens/sign_up_screens/components/sign_up_form.dart';
import 'package:learnflutter/screens/sign_up_screens/sign_up.dart';
//import 'package:learnflutter/screens/sign_up_success_screens/sign_up_success.dart';
import 'package:learnflutter/screens/stream_screens/stream_music.dart';
import 'package:provider/provider.dart';
import 'models/playlist_model.dart';
import 'screens/login_success/login_success.dart';
import 'screens/playlist_screens/playlist_screen.dart';
import 'screens/sign_in_screens/sign_in.dart';
import 'screens/song_screens/song_screen.dart';

// void main() => runApp(const MyApp());

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

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
          //scaffoldBackgroundColor: Colors.deepOrange.shade800,
          brightness: Brightness.dark,
          // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          //   backgroundColor: Colors.deepOrange,
          //   unselectedItemColor: Colors.deepOrange.shade100,
          //   selectedItemColor: Colors.white,
          //   showUnselectedLabels: false,
          //   showSelectedLabels: false,
          //   type: BottomNavigationBarType.fixed,
          //   selectedLabelStyle: TextStyle(
          //     fontSize: 12,
          //   ),
          //   unselectedLabelStyle: TextStyle(
          //     fontSize: 12,
          //   ),
          // ),
        ),
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
        initialRoute: MainPage.routeName,
        routes: {
          MainPage.routeName:(context) => const MainPage(),
          CustomNavBar.routeName: (context) => const CustomNavBar(),
          HomeView.routeName:(context) => const HomeView(),
          PlaylistScreen.routeName: (context) => const PlaylistScreen(),
          SongScreen.routeName: (context) => const SongScreen(),
          LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
          StreamMusicView.routeName:(context) => const StreamMusicView(),
          LibraryView.routeName:(context) => const LibraryView(),
          //SignUpSuccess.routeName:(context) => SignUpSuccess(),
          //AddSongs.routeName:(context) => AddSongs(),
        },
      ),
    );
  }
}
