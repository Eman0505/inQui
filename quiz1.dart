import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new IQuiz();

class IQuiz {
  var questions = [
    "It is a financial plan that helps you to track money, make informed spending decisions and plan for your financial goal",
    "It is the outflow of money or assets to other individual or company as a payment for an item or service",
    "This type of expense cannot easily be changed and are usually paid on a regular basis, such as weekly, monthly, quarterly or from year to year.",
    "It is a is a legal entity that allows a person (the grantor, donor, or settlor) to transfer assets to another person or organization (the trustee)",
    "This type of expense expenses represent those daily spending decisions like eating at restaurants, buying clothes, drinking Starbucks, and playing a round of golf with your buddies.",
    "It generally refers to the amount of money, property, and other transfers of value received over a set period of time by individuals or entities as compensation for services, payment for products, etc.",
    "It is an intentionally deceptive action designed to provide the perpetrator with an unlawful gain or to deny a right to a victim.",
    "This is an illegal form of multilevel marketing. In these scams, your ability to earn profits is based on the number of new participants you recruit, instead of the amount of products or services you sell.",
    "In this type of scheme, investors give money to a portfolio manager. Then, when they want their money back, they are paid out with the incoming funds contributed by later investors",
    "It is a term that covers managing your money as well as saving and investing.",
    "The ______ summarizes incomes and expenses for a period of time",
    "The ______ shows how much cash came in and where it came from, and how much cash went out and where it went over a period of time.",
    "It is a list of assets, debts or liabilities, and equity or net worth, with their values",
    "In business, these are resources that can be used to create income",
    "In personal finance, this occurs when liabilities are greater than the value of  assets",
    "Higher Risk means higher returns in the long run",
    "The shares are the most volatile in all asset classes",
    "Cash is considered to be the most liquid of all the assets",
    "When it comes to liquidity, real estate is considered to have a high liquidity",
    "Credit is a means of buying now and paying it later with interest",
    "It protects you from financial loss in the event of a disaster or other hardship",
    "This type of insurance benefits the beneficiary, usually a family member, when the insured passes away.",
    "The amount of money you need to pay to be covered under an insurance policy.",
    "The person you assign to receive the benefits of your insurance policy if you pass away.",
    "It is is a contract between the buyer, often referred to as the insured, and the insurer",
    "It is the state of being where you present your financial resources are enough to support your current lifestyle, even if you don't work for a long period of time",
    "These are income earned from your assets",
    "These are income earned from your employment",
    "This refers to the amount of money an investment will grow to over some period of time at a given interest rate",
    " Active Income is the most critical factor to financial independence",
    " _____ is the exposure to events or perils that can cause financial loss",
    "It is a fungible, negotiable financial instrument that holds some type of monetary value",
    "It represents ownership interest held by shareholders in an entity, realized in the form of shares or capital stock",
    "It represents money that is borrowed and must be repaid, with terms that stipulates the size of the loan, interest rate, and maturity or renewal date.",
    "This type of security combines the characteristics of the two other securities",
    "This market segment refers to trading in very short term debt investments",
    "These are venues where savings and investments are channelled between the suppliers who have capital and those who are in need of capital",
    "This market is the financial market for financial instruments like future contracts, which are derived from other forms of assets",
    "It is a decentralized market in which market participants trade stocks, commodities,currencies or other instruments directly between two parties and without a central exchange or broker"
    "This debt is owed for which you personally are legally responsible",
    "In the 5 C's of credit, this refers to the credit history of the creditor, which is a borrower's reputation or track record for repaying debts",
    "In the 5 C's of credit, it measures the borrower's ability to repay a loan by comparing income against recurring debts and assessing the borrower's debt-to-income (DTI) ratio.",
    "In the 5 C's of credit, it gives the lender the assurance that if the borrower defaults on the loan",
    "It is a system used by lenders to gauge the creditworthiness of potential borrowers.",
    "It allows you to spend money by drawing on funds you have deposited at the bank.",
    "It allows you to borrow money from the card issuer up to a certain limit to purchase items or withdraw cash.",
    "It refers to excess cash that is retained for future investing or spending",
    "This relates to the purchase of assets that are expected to generate a rate of return, with the hope that over time the individual will receive back more money than they originally invested.",
    "Personal Finance is the process of planning and managing personal financial activities such as income generation, spending, saving, investing, and protection",
  ];

  var choices = [
    
    ["A.  Money Tracker",	"B. Financial Wallet",	"C. Budget",	"D. Savings Account"],
    ["A. Income",	"B. Capital",	"C. Liability",	"D. Expenses"],
    ["A. Utility Expenses",	"B. Fixed Expenses",	"C. Variable Expenses",	"D. Rent Expenses"],
    ["A. Trust",	"B. Bonds",	"C. Securities",	"D. Fund"],
    ["A. Luxury Expenses",	"B. Fixed Expenses",	"C. Variable Expenses",	"D. Leisure Expenses"],
    ["A. Income",	"B. Capital",	"C.Liability",	"D. Expenses"],
    ["A.  Theft",	"B. Fraud",	"C. Counterfeiting",	"D. Scam"],
    ["A. Ponzi Scheme",	"B.  Networking",	"C. Pyramid Scheme",	"D. Investment Scam"],
    ["A. Ponzi Scheme",	"B. Networking",	"C. Pyramid Scheme",	"D. Investment Scam"],
    ["A. Budgeting",	"B. Retirement Planning",	"C. Investment",	"D. Personal Finance"],
    ["A. Cash Flow Statement",	"B. Balance Sheet",	"C. Income Statement",	"D. Net Income"],
    ["A. Cash Flow Statement",	"B. Balance Sheet",	"C. Income Statement",	"D. Net Income"],
    ["A. Cash Flow Statement",	"B. Balance Sheet",	"C. Income Statement",	"D. Net Income"],
    ["A. Assets",	"B. Liability",	"C. Cash",	"D. Capital"],
    ["A. Net Loss",	"B. Personal Bankruptcy",	"C. Solvency",	"D. Personal Gain"],
    ["A. True",	"B. False"],
    ["A. True",	"B. False"],
    ["A. True",	"B. False"],
    ["A. True",	"B. False"],
    ["A. True",	"B. False"],
    ["A. Securities",	"B. Bonds",	"C. Stocks",	"D. Insurance"],
    ["A. Health Insurance",	"B. Non-Life Insurance",	"C. Life Insurance",	"D. Term-Life Insurance"],
    ["A. Coverage",	"B. Claim",	"C. Premium",	"D. Interest"],
    ["A. Insurer",	"B. Beneficiary",	"C. Insurance Company",	"D. Insurance Agent"],
    ["A. Insurance Plan",	"B.Insurance Coverage",	"B. Insurance Premium",	"D. Insurance Policy"],
    ["A. Happiness",	"B. Wealth",	"C. Leisure",	"D. Security"],
    ["A. Investment",	"B. Active Income",	"C. Passive Income",	"D. Fixed Income"],
    ["A. Investment",	"B. Active Income",	"C. Passive Income",	"D. Fixed Income"],
    ["A. Future Value",	"B. Present Value",	"C. Capital",	"D. Time Value"],
    ["A. True",	"B. False"],
    ["A. Danger",	"B. Risk",	"C. Hazard",	"D. Threat"],
    ["A. Stock",	"B.Bonds",	"C.Securities",	"D. Trust"],
    ["A. Equity Security",	"B. Debt Security",	"C. Hybrid Security", "D. Counterfeiting"],
    ["A. Equity Security",	"B. Debt Security",	"C. Hybrid Security", "D. Capital"],
    ["A. Equity Security",	"B. Debt Security",	"C. Hybrid Security", "D. Stocks"],
    ["A. Derivatives",	"B. Capital Markets",	"C. Money Markets",	"D. Over the Counter"],
    ["A. Derivatives",	"B. Capital Markets",	"C. Money Markets",	"D. Over the Counter"],
    ["A. Derivatives",	"B. Capital Markets",	"C. Money Markets",	"D. Over the Counter"],
    ["A. Derivatives",	"B. Capital Markets",	"C. Money Markets",	"D. Over the Counter"],
    ["A. Secured Debt",	"B. Unsercured Debt",	"C. Personal Debt", "D. Fixed Income"],
    ["A. Character",	"B. Capacity",	"C. Collateral",	"D. Condition"],
    ["A. Character",	"B. Capacity",	"C. Collateral",	"D. Condition"],
    ["A. Character",	"B. Capacity",	"C. Collateral",	"D. Condition"],
    ["A. Credit Investigation",	"B. Credit Track Record",	"C. 5 C's of Credit",	"D. Credit History"],
    ["A. Credit Card",	"B. Debit Card",	"C. ATM Card",	"D. Premium Card"],
    ["A. Credit Card",	"B. Debit Card",	"C. ATM Card",	"D. Premium Card"],
    ["A. Spending",	"B.Investing",	"C. Protection",	"D. Saving"],
    ["A. Spending",	"B.Investing",	"C. Protection",	"D. Saving"],
    ["A. True",	"B. False"]
  ];

  var correctAnswers = ["C. Budget", "D. Expenses", "B. Fixed Expenses", "A. Trust", "C. Variable Expenses", 
  "A. Income", "B. Fraud", "C. Pyramid Scheme", "A. Ponzi Scheme", "D. Personal Finance", "C. Income Statement", 
  "A. Cash Flow Statement", "B. Balance Sheet", "A. Assets", "B. Personal Bankruptcy", "A. True", "A. True", 
  "A. True", "B. False", "A. True", "D. Insurance", "C. Life Insurance", "C. Premium", "B. Beneficiary", 
  "D. Insurance Policy", "B. Wealth", "C. Passive Income", "B. Active Income", "A. Future Value", "B. False", 
  "B. Risk", "C.Securities", "A. Equity Security", "B. Debt Security", "C. Hybrid Security", "C. Money Markets",
  "B. Capital Markets", "A. Derivatives", "D. Over the Counter", "C. Personal Debt", "A. Character", "B. Capacity",
  "C. Collateral", "C. 5 C's of Credit", "B. Debit Card", "A. Credit Card", "D. Saving", "B. Investing", "A. True"];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: new TextStyle(fontSize: 22.0),
                      ),
                      new Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                ),
                new Text(
                  quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][1],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][2],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][3],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Container(
                    alignment: Alignment.bottomCenter,
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: new Text(
                          "Quit",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ))),
              ],
            ),
          ),
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new Summary()));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: 10",
                style: new TextStyle(fontSize: 35.0),
              ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text(
                  "Reset Quiz",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
