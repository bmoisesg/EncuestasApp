import 'package:flutter/material.dart';

class EditarEncuesta extends StatefulWidget {
  const EditarEncuesta({Key? key}) : super(key: key);

  @override
  State<EditarEncuesta> createState() => _EditarEncuestaState();
}

class _EditarEncuestaState extends State<EditarEncuesta> {
  var encuestas = ["Encuesta 1", "Encuesta 2", "Encuesta 3", "Encuesta 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar encustas"),
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
                      Navigator.pushNamed(context, "/ind");
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
