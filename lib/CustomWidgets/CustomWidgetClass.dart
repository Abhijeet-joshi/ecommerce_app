import 'package:flutter/material.dart';

Widget CircularButton(IconData icn, Color clr){
  //pass icon and icon color
  return CircleAvatar(
    radius: 25,
    backgroundColor: Colors.grey.shade300,
    child: Icon(icn, color: clr),
  );
}

Widget CustomizedTextField(
    {required IconData prefix,
    required String hintText,
    required TextEditingController ctrl,
    required IconData suffix}){

  // pass prefix icon, hint, controller, suffix icon
  return TextField(
    keyboardType: TextInputType.number,
    style: const TextStyle(color: Colors.black, fontSize: 18),
    controller: ctrl,
    cursorColor: Colors.black,
    decoration: InputDecoration(
      fillColor: Colors.grey.shade300,
      filled: true,
      prefixIcon:Icon(prefix, color: Colors.black),
      suffixIcon: Icon(suffix, color: Colors.black),
      hintText: hintText,
      hintStyle: const TextStyle(
          color: Colors.grey, fontWeight: FontWeight.normal),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(41)),
          borderSide: BorderSide(width: 0, color: Colors.grey.shade300)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(41)),
          borderSide: BorderSide(width: 0, color: Colors.grey.shade300)),
    ),
  );
}

