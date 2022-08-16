import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim()
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: Column(
          children: [
            //HELLO TEXT
            SizedBox(height: 40,),
            Text("Welcome Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
            //username textfield
            SizedBox(height: 60,),

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
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                      ),
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
                    controller: _passwordcontroller,
                    obscureText: true,
                    obscuringCharacter: '#',
                    decoration: InputDecoration(
                        border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                      ),
                        hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            //Signin button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                    signin();
                  },
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
            ),
            Padding(
                padding:EdgeInsets.all(15),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New user"),
                    SizedBox(width: 15,),
                    Text("Register",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}