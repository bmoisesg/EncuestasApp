import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultadoEncuesta extends StatefulWidget {
  const ResultadoEncuesta({Key? key}) : super(key: key);

  @override
  State<ResultadoEncuesta> createState() => _ResultadoEncuestaState();
}

class _ResultadoEncuestaState extends State<ResultadoEncuesta> {
  var encuestas = ["Encuesta 1", "Encuesta 2", "Encuesta 3", "Encuesta 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ver resultado de encustas"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Encuestas disponibles:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Seleccione la encusta:',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 13,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              for (var i in encuestas)
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/ind_resultados");
                    },
                    child: Container(
                        margin: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 20, right: 20),
                        child: Text(i)),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
