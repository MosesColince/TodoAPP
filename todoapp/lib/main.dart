
import 'package:flutter/material.dart';
import 'package:todoapp/loginscreen/login.dart';
import 'model/global.dart';
import 'loginscreen/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'todoapp',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
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
    return MaterialApp(
      color: Colors.white,
      home: SafeArea(
        child: DefaultTabController(
          length: 2,
          // ignore: unnecessary_new
          child: Scaffold(
            body: TabBarView(
              children: [
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.redAccent,
                ),
              ],
            ),
            bottomNavigationBar: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                )
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              indicatorPadding: EdgeInsets.all(5.5),
            ),
            backgroundColor: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}
*/