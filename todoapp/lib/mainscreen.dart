import 'dart:html';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
         