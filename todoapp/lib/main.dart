import 'package:flutter/material.dart';
import 'model/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'newflutapp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.deepPurple,
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
