import 'package:flutter/material.dart';

final List<String> noteDescription = [];
final List<String> noteHeading = [];
TextEditingController noteHeadingController = TextEditingController();
TextEditingController noteDescriptionController = TextEditingController();
FocusNode textSecondFocusNode = FocusNode();

int notesHeaderMaxLenth = 25;
int notesDescriptionMaxLines = 10;
int notesDescriptionMaxLenth = 25;
String deletedNoteHeading = " ";
String deletedNoteDescription = " ";

List<Color> noteColor = [
  Colors.pink,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.indigo,
  Colors.red,
  Colors.yellow,
  Colors.brown,
  Colors.teal,
  Colors.purple
];
List<Color> noteMarginColor = [
  Colors.pink,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.indigo,
  Colors.red,
  Colors.yellow,
  Colors.brown,
  Colors.teal,
  Colors.purple
];
