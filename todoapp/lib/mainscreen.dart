import 'package:flutter/material.dart';
import 'loginscreen/doctorlogin.dart';
import 'patientlogin.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButton: Container(
      //  height: 70,
      //  margin: const EdgeInsets.all(5),
      //  width: double.infinity,
      //  ),
      appBar: AppBar(
        title: const Text("Select the correct specification"),
      ),
      body: Center(
         //child: Align(

        child: Column(
          children: [
           // Align(alignment: Alignment.bottomCenter),
            ElevatedButton(
              onPressed: () {
                print("Doctor button pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text("Doctor"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Patient button selected");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PatientLoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text("Patient"),
            ),
          ],
        ),
      ),
    ); //title: Text(MyApp.title),
  }
}

     