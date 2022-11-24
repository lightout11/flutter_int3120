import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:learnflutter/screens/login_success/login_success.dart';
import 'package:learnflutter/screens/sign_in_screens/sign_in.dart';
class MainPage extends StatelessWidget {
  static const routeName = '/main-page';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return LoginSuccessScreen();
        } else {
          return SignInScreen();
        }
      },)
    );
  }
}