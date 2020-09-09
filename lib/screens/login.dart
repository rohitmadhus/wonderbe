import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/helpers/signInWithgoogle.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/widgets/googleSignInButton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
              child: OutlineButton(
            onPressed: () {
              signInWithGoogle().then((result) {
                if (result != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                }
              });
            },
            child: GooglrSignInButton(),
          )),
          Visibility(
            visible: true,
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
