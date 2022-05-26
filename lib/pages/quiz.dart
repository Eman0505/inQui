import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/result.dart';
import 'package:investor_quizapp/data/questionandanswer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:hive/hive.dart';
import 'package:investor_quizapp/data/detail.dart';
import 'package:investor_quizapp/data/boxes.dart';

var quiz = QuestionAnswer(); //place database in a variable
var questionNumber = 1; //initialize start of number question
var skipQuestion = 0;
var correctAnswer = 0;
var wrongAnswer = 0;
var timeTaken = [0, 0]; //[min, sec]
//number of skipped question/ correct answer/ wrong answer/ time taken

void reset() {
  questionNumber = 1;
  skipQuestion = 0;
  correctAnswer = 0;
  wrongAnswer = 0;
  timeTaken = [0, 0];
}

class Quiz extends StatefulWidget {
  final String y, titl;
  const Quiz({Key? mykey, required this.y, required this.titl})
      : super(key: mykey);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<Detail> details = [];

  @override
  void dispose() {
    Hive.close();

    super.dispose();
  }

  //Generate random number from 0 to number of question
  int randomNumber = Random().nextInt(2);
  //widget for choices
  Widget choose(String abcd, int x) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: 310,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          side: const BorderSide(
              color: Color.fromRGBO(5, 195, 107, 100), width: 5),
        ),
        child: AutoSizeText(
          abcd, //display choices from a to d
          //textAlign: TextAlign.left,
          maxLines: 1,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        //onpress button for choices
        onPressed: () {
          if (quiz.sagot[int.parse(widget.y)][randomNumber][x] ==
              quiz.tama[int.parse(widget.y)][randomNumber]) {
            correctAnswer++;
            debugPrint("correct" + correctAnswer.toString());
          } else {
            wrongAnswer++;
            debugPrint("wrong" + wrongAnswer.toString());
          }
          //Canceltimer timer
          canceltimer = true;
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: const Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(81, 231, 168, 100),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(81, 231, 168, 45),
            offset: Offset(
              -3.0,
              4.0,
            ),
            blurRadius: 10.0,
          ),
        ],
      ),
    );
  }

//initialization for timer
  bool canceltimer = false;
  int timeLeft = 10;
  var timestring = "10";
  @override
  void initState() {
    starttimer();
    super.initState();
  }

//timer countdown function
  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (canceltimer == true) {
          t.cancel();
        } else if (timeLeft < 1) {
          skipQuestion++;
          debugPrint("skip" + skipQuestion.toString());
          t.cancel();
          updateQuestion();
          starttimer();
        } else {
          timeLeft--;
          timeTaken[1]++;
          if (timeTaken[1] == 60) {
            timeTaken[1] = 0;
            timeTaken[0]++;
          }
        }
        timestring = timeLeft.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text(
              widget.titl,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Poppins-ExtraBold',
                fontWeight: FontWeight.w800,
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
            elevation: 3,
            actions: [
              //Display timer
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(83, 215, 80, 0.3),
                    border: Border.all(
                        color: Color.fromRGBO(5, 195, 107, 100), width: 4.0),
                    shape: BoxShape.circle,
                  ),
                  height: 50.0,
                  width: 50.0,
                  child: Center(
                    child: Text(
                      timestring,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 35),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Display question number
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "Question $questionNumber",
                      style: const TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins Medium',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Question-Box
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                          child: Center(
                            child: AutoSizeText(
                              quiz.tanong[int.parse(widget.y)][randomNumber],
                              maxLines: 6,
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Lora',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(81, 231, 168, 100),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(81, 231, 168, 45),
                                offset: Offset(
                                  -3.0,
                                  4.0,
                                ),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                        ),
                        //display all choices

                        for (int x = 0;
                            x <
                                quiz.sagot[int.parse(widget.y)][randomNumber]
                                    .length;
                            x++) ...[
                          //call widget for choices and pass 2 parameters

                          choose(
                              quiz.sagot[int.parse(widget.y)][randomNumber][x],
                              x),
                          const Padding(padding: EdgeInsets.all(5.0))
                        ],
                      ],
                    ),
                  ),
                  //Skip button
                  MaterialButton(
                    height: 35.0,
                    minWidth: 120.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: Color.fromRGBO(5, 195, 107, 50), width: 3),
                    ),
                    child: const Text(
                      "SKIP ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    //onpress for skip button
                    onPressed: () => {
                      //Generate random number from 0 to number of question
                      randomNumber = Random()
                          .nextInt(quiz.tanong[int.parse(widget.y)].length),
                      skipQuestion++,
                      debugPrint("skip" + skipQuestion.toString()),
                      //call a function after clicking any button
                      updateQuestion(),
                    },
                    splashColor: const Color.fromRGBO(5, 195, 107, 50),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber < 10) {
        canceltimer = false;
        timeLeft = 10; //delay display 10

        //proceed to next question
        randomNumber =
            Random().nextInt(quiz.tanong[int.parse(widget.y)].length);

        questionNumber++;

        //Proceed to the result page
      } else if (questionNumber == 10) {
        canceltimer = true;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Result(
                      quizResult: [
                        correctAnswer,
                        wrongAnswer,
                        skipQuestion,
                        timeTaken[0],
                        timeTaken[1]
                      ],
                    )));
      }
    });
    Future addDetail(int time, int correct, int wrong, int skip) async {
      final detail = Detail()
        ..time = timeTaken[1]
        ..correct = correctAnswer
        ..wrong = wrongAnswer
        ..skip = skipQuestion;
      final box = Boxes.getDetails();
      box.add(detail);
    }
  }
}
