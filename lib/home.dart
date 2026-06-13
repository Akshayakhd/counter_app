import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

String output = "0";

class _HomeState extends State<Home> {
  int count = 0;

  Widget button(String text) {
    return SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(
        onPressed: () {
          buttonpressed(text);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: text == "+"
              ? Colors.green
              : text == "-"
              ? const Color.fromARGB(255, 218, 31, 31)
              : text == "Reset"
              ? Colors.blue
              : Colors.white,
          foregroundColor: text == "+" || text == "-" || text == "Reset"
              ? Colors.white
              : Colors.black,
          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(text),
      ),
    );
  }

  void buttonpressed(String value) {
    setState(() {
      if (value == "+") {
        count++;
      } else if (value == "-") {
        count--;
      } else if (value == "Reset") {
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter App",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "$count",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [button("-"), SizedBox(width: 20), button("+")],
              ),

              SizedBox(height: 20),

              // Reset button
              SizedBox(
                width: 170,
                height: 55,
                child: ElevatedButton(
                  onPressed: () => buttonpressed("Reset"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text("Reset"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
