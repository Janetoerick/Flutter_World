import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class resultIMC extends StatelessWidget {
  final resultado;
  final status;

  resultIMC({required this.resultado, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (resultado > 0)
          ? BoxDecoration(
              border: Border.all(
                color: Colors.deepPurpleAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)))
          : BoxDecoration(border: Border.all(color: Colors.white)),
      height: 220,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
                height: 200,
                child: (resultado == 0)
                    ? Container()
                    : (resultado < 18.5)
                        ? Image.asset('lib/assets/img1.png')
                        : (resultado >= 18.5 && resultado < 25)
                            ? Image.asset('lib/assets/img2.png')
                            : (resultado >= 25 && resultado < 30)
                                ? Image.asset('lib/assets/img3.png')
                                : (resultado >= 30 && resultado < 35)
                                    ? Image.asset('lib/assets/img4.png')
                                    : (resultado >= 35 && resultado < 40)
                                        ? Image.asset('lib/assets/img5.png')
                                        : Image.asset('lib/assets/img6.png')),
          ),
          (resultado > 0)
              ? Expanded(
                  child: Container(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Seu IMC",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$resultado",
                          style: TextStyle(
                              fontSize: 52, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$status",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
