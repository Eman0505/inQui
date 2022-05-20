import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: use_key_in_widget_constructors
class Result extends StatefulWidget {
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  ///////Widget for 4 small boxes//////////////
  Widget cont(String name, int num, Color boxdeco, Color boxshad) {
    return Container(
      //height: 80.0, //80 talaga
      width: 85.0, //85
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 15.0, //20 talaga
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            num.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 25.0, //20 talaga
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: boxdeco,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: boxshad,
            offset: const Offset(
              -3.0,
              4.0,
            ),
            blurRadius: 8.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "RESULT",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
          ),
          leading: Image.asset("assets/images/logo.png"),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child:
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                          // text
                          const Text(
                            "COMPLETED",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'Poppins-Bold',
                                fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            "PERSONAL FINANCE",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 6),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CircularPercentIndicator(
                                  // add dependencies percent_indicator: ^3.4.0]
                                  radius: 160.0,
                                  lineWidth: 16.0,
                                  animation: true,
                                  percent: 1 / 10,
                                  center: Text(
                                    "1/10", //pedeng score na lang instead of percentage
                                    style: const TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 40.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor:
                                      const Color.fromRGBO(5, 195, 107, 100),
                                  backgroundColor:
                                      const Color.fromRGBO(83, 215, 80, 0.3),
                                ),
                              ]),
                          //Time-Taken (10mins 35 secs)
                          const SizedBox(height: 8),
                          Column(children: const <Widget>[
                            Text(
                              "Time Taken: -",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(height: 10),
                                  cont(
                                      "Correct",
                                      1,
                                      const Color.fromRGBO(81, 231, 168, 100),
                                      const Color.fromRGBO(81, 231, 168, 45)),

                                  //Wrong
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                  ),
                                  const SizedBox(height: 10),

                                  cont(
                                      "Wrong",
                                      2,
                                      const Color.fromRGBO(243, 83, 86, 100),
                                      const Color.fromRGBO(243, 83, 86, 100)),
                                ]),
                          ),
                        ]),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          //Skipped
                          cont(
                              "Skipped",
                              3,
                              const Color.fromRGBO(240, 243, 60, 100),
                              const Color.fromRGBO(240, 243, 60, 45)),
                          //attempts
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                          ),
                          const SizedBox(height: 10),
                          cont(
                              "Attempt",
                              4,
                              const Color.fromRGBO(208, 241, 207, 100),
                              const Color.fromRGBO(208, 241, 207, 100)),
                        ]),
                  ),

                  const SizedBox(height: 10),
                  //back button-details
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 30),
                        //back button
                        MaterialButton(
                          height: 37.0,
                          minWidth: 121.0,
                          color: const Color.fromRGBO(5, 195, 107, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "BACK ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () => {Navigator.pop(context)},
                          splashColor: const Color.fromRGBO(5, 195, 107, 50),
                        ),

                        //details buttons
                        const Padding(
                          padding: EdgeInsets.all(14.0),
                        ),
                        const SizedBox(height: 30),
                        MaterialButton(
                          height: 37.0,
                          minWidth: 121.0,
                          color: const Color.fromRGBO(5, 195, 107, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "DETAILS ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () => {},
                          splashColor: const Color.fromRGBO(5, 195, 107, 50),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      );
}