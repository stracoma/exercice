import 'package:flutter/material.dart';

class Messtyles {
  static AppBar monAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.blue[800],
      centerTitle: true,
    );
  }

  static TextStyle monTextStyle() {
    return TextStyle(
      fontSize: 25.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  static ElevatedButton monElevatedButton({
    required BuildContext context,
    required String text,
    required String chemin,
    required VoidCallback setStateCallback,
  }) {
    return ElevatedButton(
      onPressed: () {
        setStateCallback(); // Appelle setState du widget parent
        Navigator.pushNamed(context, chemin);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        textStyle: TextStyle(fontSize: 18.0),
      ),
      child: Text(text),
    );
  }
}
