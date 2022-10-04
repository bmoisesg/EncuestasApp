import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Welcom admin',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 20,
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
                    Navigator.pushNamed(context, "/crear");
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
                height: 20,
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
                    Navigator.pushNamed(context, "/editar");
                  },
                  child: Text(
                    "Edit".toUpperCase(),
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
                    Navigator.pushNamed(context, "/eliminar");
                  },
                  child: Text(
                    "Delete".toUpperCase(),
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
                    Navigator.pushNamed(context, "/resultados");
                  },
                  child: Text(
                    "Resultados".toUpperCase(),
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
