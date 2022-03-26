
// ignore_for_file: prefer_const_constructors

import 'package:animaladopt/project_imports.dart';

///InputDecoration for TextFormField used in Project
InputDecoration textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: ProjectColors.formFieldBordersActive,
      width: 2.0,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.zero, //circular(10.0),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ProjectColors.formFieldBordersFocused,
        width: 3.0,
      )),
);