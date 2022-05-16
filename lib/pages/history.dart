import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/bookmarks.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  //Category history builder
  Widget History(double progress, String title, int attempts) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation(Color.fromRGBO(5, 195, 107, 1)),
                    backgroundColor: Color.fromRGBO(83, 215, 80, 0.4),
                    strokeWidth: 8,
                    value: progress,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.lock_open_rounded, size: 30),
                ),
              ),
              Align(
                alignment: Alignment(0.3, 1),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'Poppins-SemiBold',
                              height: 0.9,
                            ),
                          ),
                          TextSpan(
                            text: '\nQuizzes Attempted: $attempts',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(1.1, 1),
                child: SizedBox(
                  height: 60,
                  child: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(5, 195, 107, 1), size: 45),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color.fromRGBO(5, 195, 107, 50),
              width: 3,
            ),
          ),
        ),
        onTap: () => {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'HISTORY',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_outline_rounded),
              iconSize: 35,
              color: Colors.black,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bookmarks()),
                )
              },
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Choose a topic to view history.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Personal Finance
                History(0.75, 'Personal Finance', 1),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Capital Markets
                History(0.25, 'Capital Markets', 0),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Behavioral Finance
                History(0.0, 'Behavioral Finance', 0),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Investment and Portfolio Management
                History(0.0, 'Investment and Portfolio Management', 0),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows
              ],
            ),
          ),
        ),
      );
}