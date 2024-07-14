import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  Widget calcButton(String btntxt, Color? btnColor, Color? textColor) {
    return SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shape: const CircleBorder(),
            padding: EdgeInsets.zero),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Calculator display
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // button functions will be called
                calcButton("AC", Colors.grey, Colors.black),
                calcButton("+/-", Colors.grey, Colors.black),
                calcButton("%", Colors.grey, Colors.black),
                calcButton("/", Colors.amber[700], Colors.black),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // button functions will be called
                calcButton("7", Colors.grey[850], Colors.white),
                calcButton("8", Colors.grey[850], Colors.white),
                calcButton("9", Colors.grey[850], Colors.white),
                calcButton("x", Colors.amber[700], Colors.black),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // button functions will be called
                calcButton("4", Colors.grey[850], Colors.white),
                calcButton("5", Colors.grey[850], Colors.white),
                calcButton("6", Colors.grey[850], Colors.white),
                calcButton("-", Colors.amber[700], Colors.black),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // button functions will be called
                calcButton("1", Colors.grey[850], Colors.white),
                calcButton("2", Colors.grey[850], Colors.white),
                calcButton("3", Colors.grey[850], Colors.white),
                calcButton("+", Colors.amber[700], Colors.black),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
