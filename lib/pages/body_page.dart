import 'package:calculator/components/my_button.dart';
import 'package:calculator/components/my_textField.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  double? result;

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  // button functions

  void add(String text1, String text2) {
    if (parseDouble(text1) && parseDouble(text2)) {
      double num1 = double.parse(text1);
      double num2 = double.parse(text2);

      setState(() {
        result = num1 + num2;
      });

      firstController.clear();
      secondController.clear();
    } else {
      mySnackBar("Invalid Input");
    }
  }

  void subtract(String text1, String text2) {
    if (parseDouble(text1) && parseDouble(text2)) {
      double num1 = double.parse(text1);
      double num2 = double.parse(text2);

      setState(() {
        result = num1 - num2;
      });

      firstController.clear();
      secondController.clear();
    } else {
      mySnackBar("Invalid Input");
    }
  }

  void multiply(String text1, String text2) {
    if (parseDouble(text1) && parseDouble(text2)) {
      double num1 = double.parse(text1);
      double num2 = double.parse(text2);

      setState(() {
        result = num1 * num2;
      });

      firstController.clear();
      secondController.clear();
    } else {
      mySnackBar("Invalid Input");
    }
  }

  void divide(String text1, String text2) {
    if (parseDouble(text1) && parseDouble(text2)) {
      double num1 = double.parse(text1);
      double num2 = double.parse(text2);

      if (num2 == 0) {
        mySnackBar("Cannot divide by zero");
        return;
      }

      setState(() {
        result = num1 / num2;
      });

      firstController.clear();
      secondController.clear();
    } else {
      mySnackBar("Invalid Input");
    }
  }

  // utilities
  void mySnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text(text)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  bool parseDouble(String text) {
    if (text.isEmpty) return false;

    double? value = double.tryParse(text);
    return value != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: [
              // spacing
              const SizedBox(
                height: 20,
              ),
              if (result != null)
                Center(
                  child: Text(
                    "$result",
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: "Roboto"),
                  ),
                ),

              // text input 1
              MyInputField(label: "First Number:", controller: firstController),

              // text input 2
              MyInputField(
                  label: "Second Number:", controller: secondController),

              // spacing
              const SizedBox(
                height: 80,
              ),

              Row(
                children: [
                  // add button
                  Expanded(
                    child: MyButton(
                      name: "Add",
                      onTap: () {
                        add(firstController.text, secondController.text);
                      },
                    ),
                  ),

                  // subtract Button
                  Expanded(
                    child: MyButton(
                        name: "Subtract",
                        onTap: () {
                          subtract(firstController.text, secondController.text);
                        }),
                  )
                ],
              ),

              // divide button
              Row(
                children: [
                  // division button
                  Expanded(
                    child: MyButton(
                        name: "Divide",
                        onTap: () {
                          divide(firstController.text, secondController.text);
                        }),
                  ),

                  // multiplication button
                  Expanded(
                    child: MyButton(
                        name: "Multiply",
                        onTap: () {
                          multiply(firstController.text, secondController.text);
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
