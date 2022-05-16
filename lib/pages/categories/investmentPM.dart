import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/quiz.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:url_launcher/link.dart';

class InvestmentPM extends StatefulWidget {
  const InvestmentPM({Key? key}) : super(key: key);

  @override
  State<InvestmentPM> createState() => _InvestmentPMState();
}

class _InvestmentPMState extends State<InvestmentPM> {
  int selectedIndex = 0;
  final screens2 = [
    'Description',
    'Sources',
  ];
  final screens = [
    const Text(
        "Portfolio management is the art and science of selecting and overseeing a group of investments that meet the long-term financial objectives and risk tolerance of a client, a company, or an institution.\nProfessional licensed portfolio managers work on behalf of clients, while individuals may choose to build and manage their own portfolios. In either case, the portfolio manager's ultimate goal is to maximize the investments' expected return within an appropriate level of risk exposure.\nPortfolio management requires the ability to weigh strengths and weaknesses, opportunities, and threats across the full spectrum of investments. The choices involve trade-offs, from debt versus equity to domestic versus international and growth versus safety.",
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
              'https://www.investopedia.com/terms/p/portfoliomanagement.asp'),
          builder: (context, followLink) => GestureDetector(
            onTap: followLink,
            child: const Text(
              'Investopedia - Portfolio Management',
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
      backgroundColor: const Color.fromRGBO(132, 114, 242, 1),
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
                    Text('Investment\nand Portfolio\nManagement',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w900,
                        )),
                    Image(
                      image: AssetImage(
                          'assets/images/investment_and_portfolio_management.png'),
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
                                  builder: (context) => Quiz2()),
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

// Investment and Portfolio Management Color
// Purple             (#8472f2)   'Color.fromRGBO(132, 114, 242, 1)'
// NeonGreen          (#51e7a8)   'Color.fromRGBO(81, 231, 168, 1)'
// Lighter NeonGreen  (#cff0cf)   'Color.fromRGBO(207, 240, 207, 1)'
