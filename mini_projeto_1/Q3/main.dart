import 'package:flutter/material.dart';

import 'package:mini_projeto_1/components/form_imc.dart';
import 'package:mini_projeto_1/components/result_imc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _imc = 0.0;
  String _status = "";

  _calculoIMC(double imc) {
    String _status_temp = "";
    if (imc < 18.5) {
      _status_temp = "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 25) {
      _status_temp = "Peso Normal";
    } else if (imc >= 25 && imc < 30) {
      _status_temp = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      _status_temp = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      _status_temp = "Obesidade Grau II";
    } else if (imc >= 40) {
      _status_temp = "Obesidade Grau III";
    }

    setState(() {
      _imc = imc;
      _status = _status_temp;
    });
    print(_imc);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("IMC APLICATION"),
              backgroundColor: Colors.deepPurpleAccent,
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                  child: Column(
                children: [
                  FormIMC(_calculoIMC),
                  const SizedBox(
                    height: 20,
                  ),
                  resultIMC(
                    resultado: _imc,
                    status: _status,
                  )
                ],
              )),
            )));
  }
}
