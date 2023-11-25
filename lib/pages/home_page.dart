import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _label = "How?";
  double? text;
  double _number = 0;
  var numberColor = Colors.amber;

  @override
  void initState() {
    super.initState();
    if (text == null) {
      setState(() {
        text = 0;
      });
    } else {
      text.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'How do you favorite Flutter?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            '${text?.round().toString()}' ?? '0',
            style: TextStyle(
              color: numberColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          // slider
          Slider(
            thumbColor: Colors.blue[900],
            inactiveColor: Colors.blue[300],
            value: _number,
            activeColor: Colors.white,
            max: 10,
            mouseCursor: MaterialStateMouseCursor.clickable,
            min: 0,
            label: _label,
            divisions: 10,
            onChanged: (double value) {
              setState(() {
                _number = value;
                text = value;
                if (value == 10) {
                  _label = 'Very Nice';
                }
                if (value == 0) {
                  _label = "Ohhhhh Why";
                } else {
                  _label = "How?";
                }
              });
            },
          )
        ],
      ),
    );
  }
}
