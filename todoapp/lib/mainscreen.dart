import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';
import 'loginscreen/doctorlogin.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Doctor",
              style: TextStyle(color: Colors.orange, fontSize: 45)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.vertical(
                  bottom: Radius.circular(40))),
        ),
        body: BottomAppBar(
          child: ElevatedButton(
            child: const Text("Doctor"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ),
    ); //title: Text(MyApp.title),
  }
}

      /*
      color: Colors.white,
      home: SafeArea(
        child: DefaultTabController(
          length: 2,
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