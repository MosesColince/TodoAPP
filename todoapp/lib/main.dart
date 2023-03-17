import 'package:flutter/material.dart';
import 'package:todoapp/loginscreen/doctorlogin.dart';
import 'model/global.dart';
import 'loginscreen/doctorlogin.dart';
import 'mainscreen.dart';
//import 'loginscreen/patientlogin.dart';

void main() {
  runApp(const MaterialApp(
    title: "todoapp",
    home: MainScreen(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'todoapp',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MainScreen(),
    
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
*/