import 'package:flutter/material.dart';

class Crear extends StatefulWidget {
  const Crear({Key? key}) : super(key: key);

  @override
  State<Crear> createState() => _CrearState();
}

class _CrearState extends State<Crear> {
  bool obligatorioCampo = true;
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
  var listaparametros = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Crear encuesta")),
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
              Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 38,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.grey[350],
                        ),
                        controller: _nombreCampoController,
                        decoration: InputDecoration(
                          hintText: "Nombre",
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
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 38,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.grey[350],
                        ),
                        controller: _tituloCampoController,
                        decoration: InputDecoration(
                          hintText: "Titulo campo",
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
                    const Text("Requerido:"),
                    Switch(
                        value: obligatorioCampo,
                        activeColor: Colors.blue,
                        onChanged: (bool value) {
                          setState(() {
                            obligatorioCampo = value;
                          });
                        }),
                    const Text("Tipo de campo:"),
                    DropdownButton(
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[500],
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 5),
                        onPressed: () {
                          listaparametros.add({
                            "nombre": _nombreCampoController.text,
                            "titulo": _tituloCampoController.text,
                            "requerido": obligatorioCampo,
                            "tipo": dropdownvalue
                          });
                          print(listaparametros);
                          setState(() {
                            _nombreCampoController.text = "";
                            _tituloCampoController.text = "";
                            obligatorioCampo = false;
                          });

                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  title: Text("Good!"),
                                  content: Text("Se agrego el campo"),
                                );
                              });
                        },
                        child: Text(
                          "Agregar campo".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
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
                        Text(x["nombre"]),
                        Text(x["titulo"]),
                        Text(x["requerido"].toString()),
                        Text(x["tipo"]),
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
                    "Create".toUpperCase(),
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
