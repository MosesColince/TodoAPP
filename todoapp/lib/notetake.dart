import 'dart:ffi';

import 'package:flutter/material.dart';

class NoteTake extends StatefulWidget {
  NoteTake({Key key}) : super(key: key);

  @override
  _NoteTakeState createState() => _NoteTakeState();
}

class _NoteTakeState extends State<NoteTake> {
  var _formKey = GlobalKey<FormState>();

  @override
  Void initState() {
    super.initState();
    notesDecriptionMaxLenth -
        notesDescriptionMaxLines * notesDescriptionMaxLines;
  }

  void dispose() {
    super.dispose();
    noteDescriptionController.dispose();
    noteHeadingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: notesHeader(),
      ),
      body: noteheading.length>0? buildNotes()
      : Center(
        child: Text("Add Notes."),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 153, 197, 96), onPressed: () => 
      _settingModalBottonSheet(context),
      ),
    );
  }
}

Widget notesHeader() {
  return Padding(
    padding: EdgeInsets.only(top: 12, left: 2.7, right: 2.7),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Doctor's Notes",style: TextStyle(color: Colors.purple,
        fontSize: 24.00, fontWeight: FontWeight.w400),
        ),
        Divider(
          color: Colors.purple,
          thickness: 2.4,
        ),
      ],
      ),
  );
}
