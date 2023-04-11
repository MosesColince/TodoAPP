import 'package:flutter/material.dart';
import 'loginscreen/doctorlogin.dart';
import 'patientlogin.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 200,
       
        margin: const EdgeInsets.all(8),
        
 
       
       

        child: Column(
          children: [
            //Align(alignment: Alignment.bottomCenter),
            ElevatedButton(
              onPressed: () {
                print("Doctor button pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 70,
                  
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Center(
                child: Text("Doctor's Sign In"),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              onPressed: () {
                print("Patient button selected");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientLoginScreen()) ,
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Center(
                child: Text("Patient's Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
    //title: Text(MyApp.title),
  }
}
