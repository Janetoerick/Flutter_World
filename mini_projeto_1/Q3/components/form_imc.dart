import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormIMC extends StatelessWidget {
  Function(double) onSubmit;
  FormIMC(this.onSubmit);

  final _form = GlobalKey<FormState>();

  final _valorPeso = TextEditingController();

  final _valorAltura = TextEditingController();

  calcular() {
    if (_valorAltura.text.isNotEmpty && _valorPeso.text.isNotEmpty) {
      double doublePeso = double.parse(_valorPeso.text);
      double doubleAltura = double.parse(_valorAltura.text);

      double IMC = doublePeso / (doubleAltura * doubleAltura) * 10000;

      String imc_string = IMC.toStringAsFixed(1); // Deixando com 1 casa
      IMC = double.parse(imc_string);

      onSubmit(IMC);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        key: _form,
        children: [
          TextFormField(
            controller: _valorPeso,
            style: TextStyle(fontSize: 22),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Peso",
                suffix: Text("Kg")),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _valorAltura,
            style: TextStyle(fontSize: 22),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Altura",
                suffix: Text("cm")),
            keyboardType: TextInputType.number,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 24),
            child: ElevatedButton(
                onPressed: calcular,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurpleAccent)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Calcular",
                          style: TextStyle(fontSize: 24),
                        ))
                  ],
                )),
          )
        ],
      )),
    );
  }
}
