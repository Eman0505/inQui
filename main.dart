import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(new MaterialApp(
    home: new IQuiz(),
  ));
}

class IQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IQuizState();
  }
}

class IQuizState extends State<IQuiz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multiple Choice Quiz"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz1,
                child: new Text(
                  "Quiz 1",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                )),
                new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz4,
                child: new Text(
                  "Quiz 4",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void startQuiz1() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz1()));
    });
  }

  void startQuiz4() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz4()));
    });
  }
}
