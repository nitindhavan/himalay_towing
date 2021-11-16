import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himalay/CustomWidgets/edit_text.dart';

import '../main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Card(
          child: SizedBox(
            width: 400,
            height: 520,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'HIMALAY TOWING',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    color: Colors.lightBlue
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    EditText(
                      controller: emailController,
                      text: 'Enter Your Email',
                      icon: Icon(Icons.email),
                      obscure: false,
                    ),
                    EditText(
                      controller: passwordController,
                      text: 'Enter Your Password',
                      icon: Icon(Icons.lock),
                      obscure: true,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        child: Card(
                          color: Colors.lightGreen,
                          child: TextButton(
                            onPressed: (){
                              login(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Log In'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircularProgressIndicator(
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login(BuildContext context) {
    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) =>MyApp()),);
      print(value);
    });

  }
}
