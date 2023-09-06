import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Flexible(                // linha 1
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  )),
            ],
          ),
        ),
        Flexible(                // linha 2
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                  )),
            ],
          ),
        ),
        Flexible(                // linha 3
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                  )),
            ],
          ),
        ),
        Flexible(                // linha 4
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.yellow,
                  )),
            ],
          ),
        ),
        Flexible(                // linha 5
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                  )),
            ],
          ),
        ),
        Flexible(                // linha 6
          flex: 1,
          child: Row(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
      ],
    )));
  }
}
