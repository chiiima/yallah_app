import 'package:addicfree_app/pages/HomePage.dart';
import 'package:addicfree_app/pages/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// decides if the user has already an accout or it's his first time using the app
// if he's already logged in ,the MainScreen will be displayed
// if not , the login page will be displayed



class WrapperPage extends StatelessWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder <User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context , snapshot){
          //user logged in
          if (snapshot.hasData){
            return MainScreen();
          }
          // user not logged in
        else {
          return  const HomePage();
          }
        },
      )
    );
  }
}

