import 'package:flutter/material.dart';


// customized textfields


class textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureTex;

// constructor
  const textfield ({super.key,
  required this.controller,
    required this.hintText,
    required this.obscureTex,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        //control user's imput
        controller: controller,
        // hide the password's characters
        obscureText: obscureTex,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide:BorderSide(color: Colors.blueGrey)
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
