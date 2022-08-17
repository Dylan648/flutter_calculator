import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Numpad());
  }
}

class Numpad extends StatefulWidget {
  @override
  State<Numpad> createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("$result"),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    buttonClicked(' ');
                  },
                  child: Text('AC')),
              TextButton(onPressed: () {}, child: Text('+/-')),
              TextButton(onPressed: () {}, child: Text('%')),
              TextButton(
                  onPressed: () {
                    buttonClicked('+');
                  },
                  child: Text('+')),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    buttonClicked('1');
                  },
                  child: Text('1')),
              TextButton(
                  onPressed: () {
                    buttonClicked('2');
                  },
                  child: Text('2')),
              TextButton(
                  onPressed: () {
                    buttonClicked('3');
                  },
                  child: Text('3')),
              TextButton(
                  onPressed: () {
                    buttonClicked('-');
                  },
                  child: Text('-')),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    buttonClicked('4');
                  },
                  child: Text('4')),
              TextButton(
                  onPressed: () {
                    buttonClicked('5');
                  },
                  child: Text('5')),
              TextButton(
                  onPressed: () {
                    buttonClicked('6');
                  },
                  child: Text('6')),
              TextButton(
                  onPressed: () {
                    buttonClicked('*');
                  },
                  child: Text('*')),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    buttonClicked('7');
                  },
                  child: Text('7')),
              TextButton(
                  onPressed: () {
                    buttonClicked('8');
                  },
                  child: Text('8')),
              TextButton(
                  onPressed: () {
                    buttonClicked('9');
                  },
                  child: Text('9')),
              TextButton(
                  onPressed: () {
                    buttonClicked('/');
                  },
                  child: Text('/')),
            ],
          ),
        ],
      ),
    );
  }

  String result = "";
  void buttonClicked(String input) {
    setState(() {
      result = input;
    });
  }
}
