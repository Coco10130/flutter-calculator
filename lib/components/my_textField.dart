import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const MyInputField({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // label
          Padding(
            padding: const EdgeInsets.only(left: 2, bottom: 5),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Roboto",
              ),
            ),
          ),

          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          )
          // input
        ],
      ),
    );
  }
}
