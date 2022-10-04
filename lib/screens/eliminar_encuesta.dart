import 'package:flutter/material.dart';

class EliminarEncuesta extends StatefulWidget {
  const EliminarEncuesta({Key? key}) : super(key: key);

  @override
  State<EliminarEncuesta> createState() => _EliminarEncuestaState();
}

class _EliminarEncuestaState extends State<EliminarEncuesta> {
  var encuestas = ["Encuesta 1", "Encuesta 2", "Encuesta 3", "Encuesta 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eliminar encusta"),
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
                height: 20,
              ),
              for (var i in encuestas)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(i),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            encuestas.remove(i);
                          });
                        },
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        ))
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
