import 'package:flutter/material.dart';

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({
    Key? key,
  }) : super(key: key);

  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  List<Icon> listIcons = [
    Icon(Icons.check, color: Colors.green),
    Icon(Icons.close, color: Colors.red),
    Icon(Icons.close, color: Colors.red),
    Icon(Icons.check, color: Colors.green),
    Icon(Icons.check, color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: Text(
                      "Voici le texte de la question",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green)),
                      onPressed: () {},
                      child: const Text("Vrai",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0))),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      onPressed: () {},
                      child: const Text("Faux",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0))),
                ),
              ),
              Row(children: listIcons),
            ],
          ),
        ),
      ),
    );
  }
}
