import 'package:flutter/material.dart';

class EditarInd extends StatefulWidget {
  const EditarInd({Key? key}) : super(key: key);

  @override
  State<EditarInd> createState() => _EditarIndState();
}

class _EditarIndState extends State<EditarInd> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();

  final TextEditingController _nombreCampoController = TextEditingController();
  final TextEditingController _tituloCampoController = TextEditingController();

  String dropdownvalue = 'Texto';

  // List of items in our dropdown menu
  var items = [
    'Texto',
    'Numero',
    'Fecha',
  ];
  var listaparametros = [
    {
      "nombre": "Encuesta 1",
      "titulo": "Nombre1",
      "requerido": "Si",
      "tipo": "Fecha"
    },
    {
      "nombre": "Encuesta 2",
      "titulo": "Nombre2",
      "requerido": "No",
      "tipo": "Numero"
    },
    {
      "nombre": "Encuesta 3",
      "titulo": "Nombre3",
      "requerido": "Si",
      "tipo": "Cadena"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Editar encuesta individual")),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 38,
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.grey[350],
                  ),
                  controller: _nombreController,
                  decoration: InputDecoration(
                    hintText: "Nombre Encuesta",
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.grey[350],
                  ),
                  maxLines: 5,
                  controller: _descripcionController,
                  decoration: InputDecoration(
                    hintText: "Descripcion encuesta",
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
              const SizedBox(
                height: 20,
              ),
              const Text("Lista de campos actuales:"),
              const SizedBox(
                height: 20,
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
                        const Text("CAMPO:"),
                        const Divider(),
                        Text(x["nombre"].toString()),
                        Text(x["titulo"].toString()),
                        Text(x["requerido"].toString()),
                        Text(x["tipo"].toString()),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  print("Funcion para editar");
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.grey,
                                )),
                            IconButton(
                                onPressed: () {
                                  print("Funcion para editar");
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                )),
                          ],
                        )
                      ]),
                    )
                ],
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("Good!"),
                            content: Text("Here is the code..."),
                          );
                        });
                  },
                  child: Text(
                    "Editar".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("Good!"),
                            content: Text("Eliminando toda la encuesta..."),
                          );
                        });
                  },
                  child: Text(
                    "Elimar encuesta".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
