import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/quiz.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:url_launcher/link.dart';

class BehavioralFinance extends StatefulWidget {
  const BehavioralFinance({Key? key}) : super(key: key);

  @override
  State<BehavioralFinance> createState() => _BehavioralFinanceState();
}

class _BehavioralFinanceState extends State<BehavioralFinance> {
  int selectedIndex = 0;
  final screens2 = [
    'Description',
    'Sources',
  ];
  final screens = [
    const Text(
        "Behavioral finance is the study of the influence of psychology on the behavior of investors or financial analysts. It also includes the subsequent effects on the markets. It focuses on the fact that investors are not always rational, have limits to their self-control, and are influenced by their own biases.\nMoreover, influences and biases can be the source for explanation of all types of market anomalies and specifically market anomalies in the stock market, such as severe rises or falls in stock price.\nBehavioral finance can be analyzed from a variety of perspectives. Stock market returns are one area of finance where psychological behaviors are often assumed to influence market outcomes and returns but there are also many different angles for observation. The purpose of the classification of behavioral finance is to help understand why people make certain financial choices and how those choices can affect markets. Within behavioral finance, it is assumed that financial participants are not perfectly rational and self-controlled but rather psychologically influential with somewhat normal and self-controlling tendencies.",
        //textAlign: TextAlign.justify,
        style: TextStyle(
          height: 1.8,
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        )),
    Column(
      children: <Widget>[
        Row(children: const <Widget>[
          Icon(Icons.link, size: 25),
          Text(" Links",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Poppins-Medium',
                fontWeight: FontWeight.w500,
              )),
        ]),
        const Padding(padding: EdgeInsets.all(6.0)),
        Link(
          uri: Uri.parse(
              'https://www.investopedia.com/terms/b/behavioralfinance.asp'),
          builder: (context, followLink) => GestureDetector(
            onTap: followLink,
            child: const Text(
              'Investopedia - Behavioral Finance',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Poppins-Medium',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(6.0)),
        Link(
          uri: Uri.parse(
              'https://corporatefinanceinstitute.com/resources/knowledge/trading-investing/behavioral-finance/'),
          builder: (context, followLink) => GestureDetector(
            onTap: followLink,
            child: const Text(
              'CFI - Behavioral Finance',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Poppins-Medium',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color.fromRGBO(255, 95, 124, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 0 yung value para mawala yung back shadow sa app bar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          iconSize: 35,
          color: Colors.black,
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //===============Label and Icon Column
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: const <Widget>[
                    Text('Behavioral\nFinance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w900,
                        )),
                    Image(
                      image: AssetImage('assets/images/behavioral_finance.png'),
                      height: 180,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                //===============White Box (Container)
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between columns
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  height: 410,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      //===============Description & Add to Bookmarks button
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(screens2[selectedIndex],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Poppins-ExtraBold',
                                  fontWeight: FontWeight.w800,
                                )),
                            IconButton(
                              iconSize: 30,
                              icon: const Icon(Icons.bookmark_add_outlined),
                              onPressed: () => {},
                            ),
                          ]),
                      //===============Description/Sources Toggle Switch buttons
                      ToggleSwitch(
                        totalSwitches: 2,
                        initialLabelIndex: selectedIndex,
                        minWidth: 120,
                        minHeight: 30,
                        cornerRadius: 10,
                        radiusStyle: true,
                        fontSize: 16,
                        activeBgColor: const [Color.fromRGBO(81, 231, 168, 1)],
                        activeFgColor: Colors.black,
                        inactiveBgColor: const Color.fromRGBO(207, 240, 207, 1),
                        inactiveFgColor: Colors.black,
                        labels: const ['Description', 'Sources'],
                        customTextStyles: const [
                          TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          ),
                          TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          )
                        ],
                        onToggle: (index) =>
                            setState(() => selectedIndex = index!),
                      ),
                      const Padding(
                          padding: EdgeInsets.all(4.0)), //Space between columns
                      //===============Description/Sources Texts
                      Container(
                        height: 220,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: screens[selectedIndex],
                        ),
                      ),
                      //===============Quiz Button
                      Container(
                        child: MaterialButton(
                          height: 50,
                          minWidth: 200,
                          color: const Color.fromRGBO(81, 231, 168, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "QUIZ",
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Quiz3()),
                            )
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
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ),
              ]),
        ),
      ));
}

// Personal Finance Color
// Red                (#ff5f7c)   'Color.fromRGBO(255, 95, 124, 1)'
// NeonGreen          (#51e7a8)   'Color.fromRGBO(81, 231, 168, 1)'
// Lighter NeonGreen  (#cff0cf)   'Color.fromRGBO(207, 240, 207, 1)'
