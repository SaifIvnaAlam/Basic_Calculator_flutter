import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController secondValue = TextEditingController();
  TextEditingController firstValue = TextEditingController();
  double result = 0;

  void addition() {
    setState(() {
      result = double.parse(firstValue.text) + double.parse(secondValue.text);
    });
  }
  //sub function
  //division function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text(
                      "Result",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      result.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: 300,
                color: Colors.grey,
                child: TextField(
                  controller: firstValue,
                  decoration:
                      InputDecoration(hintText: "Enter the first Value"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: 300,
                color: Colors.grey,
                child: TextField(
                  controller: secondValue,
                  decoration:
                      InputDecoration(hintText: "Enter the Second Value"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: addition,
                color: Colors.amber,
                child: Text("Addition"),
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: addition,
                color: Colors.amber,
                child: Text("Substaction"),
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: addition,
                color: Colors.amber,
                child: Text("Division"),
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: addition,
                color: Colors.amber,
                child: Text("Multiply"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
