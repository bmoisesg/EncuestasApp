import 'package:encuentas/color.dart';
import 'package:encuentas/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encuestas Moises Gonzalez',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Prueba tecnica'),
      routes: appRoutes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Chamitos',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 38,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.grey[350],
                ),
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "UserName",
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
              height: 38,
              child: TextFormField(
                obscureText: _obscureText,
                style: const TextStyle(
                  color: Colors.grey,
                ),
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    isDense: true,
                    contentPadding: const EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Mycolor.colorBlue1)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    border: InputBorder.none,
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    )),
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
                  if (_emailController.text == "admin" &&
                      _passwordController.text == "admin") {
                    //_emailController.text = "";
                    //_passwordController.text = "";
                    Navigator.pushNamed(context, "/home");
                  } else {
                    print("Error para ingresar predenciales");
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("Mensaje"),
                            content:
                                Text("Deberias intentar con admin admin xd"),
                          );
                        });

                    setState(() {
                      _emailController.text = "";
                      _passwordController.text = "";
                    });
                  }
                },
                child: Text(
                  "Login".toUpperCase(),
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
                          content: const Text(
                              "Deberia pedir un link pero te dejare pasar xd"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'OK');
                                Navigator.pushNamed(context, "/encuesta");
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      });

                  setState(() {
                    _emailController.text = "";
                    _passwordController.text = "";
                  });
                },
                child: Text(
                  "Tengo un link".toUpperCase(),
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
    );
  }
}
