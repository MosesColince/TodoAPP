import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}


Widget buildForgotPassWordButton() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: (() => print("Forgot Password pressed")),
    ),
  )
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 215, 224, 43),
                      Color.fromARGB(255, 215, 224, 43),
                      Color.fromARGB(255, 215, 224, 43),
                      Color.fromARGB(255, 215, 224, 43),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ignore: prefer_const_constructors
                      Text(
                        "Sign in",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 37, 140, 59),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
