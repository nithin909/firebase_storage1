import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('signed in as ${user.email!}'),
            ElevatedButton(
                onPressed: (){
                  FirebaseAuth.instance.signOut();
                }, child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}