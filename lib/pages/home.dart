import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/bookmarks.dart';
import 'categories/capitalM.dart';
import 'categories/behavioralF.dart';
import 'categories/investmentPM.dart';
import 'categories/personalF.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'TOPICS',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0, // 0 yung value para mawala yung back shadow sa app bar
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text('Welcome!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                )),
            const Text('Find a course you want to learn',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                )),
            const Padding(padding: EdgeInsets.all(6.0)), //Space between rows
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  //color: Colors.green,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PersonalFinance()),
                      )
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/personal.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                //const Padding(padding: EdgeInsets.all(5.0)),    //Space between columns
                Material(
                  //color: Colors.purple,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InvestmentPM()),
                      )
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/investment.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(6.0)), //Space between rows
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  //color: Colors.red,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BehavioralFinance()),
                      )
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/behavioral.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                //const Padding(padding: EdgeInsets.all(5.0)),    //Space between columns
                Material(
                  //color: Colors.deepOrange,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CapitalMarkets()),
                      )
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/capital.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
