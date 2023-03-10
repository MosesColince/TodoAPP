// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Password",
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        // ignore: prefer_const_constructors
        child: TextField(
          obscureText: true,
          style: const TextStyle(color: Colors.black54),
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.password, color: Color(0xff3ba1c5)),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black45)),
        ),
      )
    ],
  );
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Doctor's Licence no",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        // ignore: prefer_const_constructors
        child: TextField(
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Colors.black54),
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon:
                  Icon(Icons.numbers, color: Color.fromARGB(255, 66, 219, 170)),
              hintText: "Doctor's Licence no",
              hintStyle: TextStyle(color: Colors.black45)),
        ),
      )
    ],
  );
}

Widget buildForgotPassWordButton() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("Forgot Password pressed"),
      padding: EdgeInsets.only(right: 0),
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget buildRememberbutton() {
  return Container(
      height: 20,
      child: Row(children: <Widget>[
        Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.blue,
              activeColor: Colors.black,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
           ),
            Text("Remeber me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
          )
        ),
      ]
    )
  );
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false,
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
                      buildForgotPassWordButton(),
                      buildRememberbutton(),
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
