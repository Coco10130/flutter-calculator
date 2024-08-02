import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const MyButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 20,
            foregroundColor: Colors.white,
          ),
          child: Text(
            name,
            style: const TextStyle(fontFamily: "Roboto", fontSize: 20),
          ),
        ),
      ),
    );
  }
}
