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
  List<bool> reponses = [
    true,
    true,
    false,
    true,
    false,
  ];
  int questionNumber = 0;
  List<String> listQuestions = [
    "La terre est ronde?",
    "une minute est égale à soixante seconde?",
    "FaceBook a conçu Flutter?",
    "la mer est bleue?",
    "un booleen peut avoir trois valeurs?",
  ];
  List<Icon> listIcons = [];

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
                      listQuestions[questionNumber],
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
                      onPressed: () {
                        if (reponses[questionNumber] == true)
                          setState(() {
                            listIcons
                                .add(Icon(Icons.check, color: Colors.green));
                          });
                        else
                          setState(() {
                            listIcons.add(Icon(Icons.close, color: Colors.red));
                          });
                        questionNumber = questionNumber + 1;
                      },
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
                      onPressed: () {
                        if (reponses[questionNumber] == false)
                          setState(() {
                            listIcons
                                .add(Icon(Icons.check, color: Colors.green));
                          });
                        else
                          setState(() {
                            listIcons.add(Icon(Icons.close, color: Colors.red));
                          });
                        questionNumber = questionNumber + 1;
                      },
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
