import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'CustomWidgets/edit_text.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          print("Error");
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return const MaterialApp(
            home: HomePage(),
          );
          // FirebaseAuth auth = FirebaseAuth.instance;
          // if (auth.currentUser == null) {
          //   return MaterialApp(
          //     home: LoginPage(emailController: emailController,
          //         passwordController: passwordController),
          //   );;
          // }
          // else{
          //   return const MaterialApp(
          //     home: HomePage(),
          //   );
          }

          // Otherwise, show something whilst waiting for initialization to complete

        return const MaterialApp(
          home: Text('User is logged in'),
        );
      }
    );
  }
}

