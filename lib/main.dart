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
  int questionNumber = 0;
  List<String> listQuestions = [
    "voici la première question",
    "La deuxième question",
    "3ième question"
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
                        setState(() {
                          listIcons.add(Icon(Icons.check, color: Colors.green));
                          questionNumber = questionNumber + 1;
                        });
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
                        setState(() {
                          listIcons.add(Icon(Icons.close, color: Colors.red));
                          questionNumber = questionNumber + 1;
                        });
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
