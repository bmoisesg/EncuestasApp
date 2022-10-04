import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultadosInd extends StatefulWidget {
  const ResultadosInd({Key? key}) : super(key: key);

  @override
  State<ResultadosInd> createState() => _ResultadosIndState();
}

class _ResultadosIndState extends State<ResultadosInd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados de encuesta seleccionada"),
      ),
      body: Center(child: Text("Aqui resultados")),
    );
  }
}
