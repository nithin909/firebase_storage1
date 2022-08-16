import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homePage.dart';
import 'loginpage.dart';

class Mainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context, snapshot) {
        if (snapshot.hasData){
          return Loginpage();
        }
        else {
          return MyHomePage();
        }
      },
      ),
    );
  }

}