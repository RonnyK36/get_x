import 'package:flutter/material.dart';

Container myButtom(context, VoidCallback onPressed, String label) {
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width * 0.8,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
