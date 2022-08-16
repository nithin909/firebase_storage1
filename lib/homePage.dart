import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: Column(
          children: [
            //HELLO TEXT
            SizedBox(height: 40,),
            Text("Welcome Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            //username textfield
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email'
                    ),
                  ),
                ),
              ),
            ),

              SizedBox(height: 20,),

            //Password textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '#',
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            //Signin button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: Text('Sign in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}