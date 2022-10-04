import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Encuesta extends StatefulWidget {
  const Encuesta({Key? key}) : super(key: key);

  @override
  State<Encuesta> createState() => _EncuestaState();
}

class _EncuestaState extends State<Encuesta> {
  final TextEditingController _Controller = TextEditingController();
  var listaparametros = [
    {
      "nombre": "Campo 1",
      "titulo": "Nombre1",
      "requerido": "Si",
      "tipo": "Fecha"
    },
    {
      "nombre": "Campo 2",
      "titulo": "Nombre2",
      "requerido": "No",
      "tipo": "Numero"
    },
    {
      "nombre": "Campo 3",
      "titulo": "Nombre3",
      "requerido": "Si",
      "tipo": "Cadena"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responde a esta encuesta"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Nombre de la encuesta',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Descripcion de la encusta:',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 13,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  for (var x in listaparametros)
                    Container(
                      padding: const EdgeInsets.only(top: 14, bottom: 14),
                      width: MediaQuery.of(context).size.width * 0.65,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.only(top: 14, bottom: 14),
                      child: Column(children: [
                        Text(x["nombre"].toString()),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(x["titulo"].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 2)),
                        const SizedBox(
                          height: 10,
                        ),
                        x["requerido"].toString() == "Si"
                            ? Text(
                                "Obligatorio*",
                                style: TextStyle(color: Colors.red),
                              )
                            : Text("Opcional",
                                style: TextStyle(color: Colors.blue)),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 38,
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                            controller: _Controller,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(10),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[350]),
                            ),
                          ),
                        ),
                      ]),
                    )
                ],
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Mensaje"),
                            content: const Text("Gracias por tu repsuesta"),
                          );
                        });
                  },
                  child: Text(
                    "Enviar".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
