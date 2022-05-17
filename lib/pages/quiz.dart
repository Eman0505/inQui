import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';

var questionNumber = 1;
var correct = 0;
var wrong = 0;
var skip = 0;
var attempt = 0;
var quiz1 = new Q1();
var quiz2 = new Q2();
var quiz3 = new Q3();
var quiz4 = new Q4();

void reset() {
  questionNumber = 1;
  correct = 0;
  wrong = 0;
  skip = 0;
}

class Q1 {
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
    "It is a decentralized market in which market participants trade stocks, commodities, currencies or other instruments directly between two parties and without a central exchange or broker",
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
    [
      "A.  Money Tracker",
      "B. Financial Wallet",
      "C. Budget",
      "D. Savings Account"
    ],
    ["A. Income", "B. Capital", "C. Liability", "D. Expenses"],
    [
      "A. Utility Expenses",
      "B. Fixed Expenses",
      "C. Variable Expenses",
      "D. Rent Expenses"
    ],
    ["A. Trust", "B. Bonds", "C. Securities", "D. Fund"],
    [
      "A. Luxury Expenses",
      "B. Fixed Expenses",
      "C. Variable Expenses",
      "D. Leisure Expenses"
    ],
    ["A. Income", "B. Capital", "C.Liability", "D. Expenses"],
    ["A.  Theft", "B. Fraud", "C. Counterfeiting", "D. Scam"],
    [
      "A. Ponzi Scheme",
      "B.  Networking",
      "C. Pyramid Scheme",
      "D. Investment Scam"
    ],
    [
      "A. Ponzi Scheme",
      "B. Networking",
      "C. Pyramid Scheme",
      "D. Investment Scam"
    ],
    [
      "A. Budgeting",
      "B. Retirement Planning",
      "C. Investment",
      "D. Personal Finance"
    ],
    [
      "A. Cash Flow Statement",
      "B. Balance Sheet",
      "C. Income Statement",
      "D. Net Income"
    ],
    [
      "A. Cash Flow Statement",
      "B. Balance Sheet",
      "C. Income Statement",
      "D. Net Income"
    ],
    [
      "A. Cash Flow Statement",
      "B. Balance Sheet",
      "C. Income Statement",
      "D. Net Income"
    ],
    ["A. Assets", "B. Liability", "C. Cash", "D. Capital"],
    [
      "A. Net Loss",
      "B. Personal Bankruptcy",
      "C. Solvency",
      "D. Personal Gain"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Securities", "B. Bonds", "C. Stocks", "D. Insurance"],
    [
      "A. Health Insurance",
      "B. Non-Life Insurance",
      "C. Life Insurance",
      "D. Term-Life Insurance"
    ],
    ["A. Coverage", "B. Claim", "C. Premium", "D. Interest"],
    [
      "A. Insurer",
      "B. Beneficiary",
      "C. Insurance Company",
      "D. Insurance Agent"
    ],
    [
      "A. Insurance Plan",
      "B.Insurance Coverage",
      "B. Insurance Premium",
      "D. Insurance Policy"
    ],
    ["A. Happiness", "B. Wealth", "C. Leisure", "D. Security"],
    [
      "A. Investment",
      "B. Active Income",
      "C. Passive Income",
      "D. Fixed Income"
    ],
    [
      "A. Investment",
      "B. Active Income",
      "C. Passive Income",
      "D. Fixed Income"
    ],
    ["A. Future Value", "B. Present Value", "C. Capital", "D. Time Value"],
    ["A. True", "B. False"],
    ["A. Danger", "B. Risk", "C. Hazard", "D. Threat"],
    ["A. Stock", "B.Bonds", "C.Securities", "D. Trust"],
    [
      "A. Equity Security",
      "B. Debt Security",
      "C. Hybrid Security",
      "D. Counterfeiting"
    ],
    [
      "A. Equity Security",
      "B. Debt Security",
      "C. Hybrid Security",
      "D. Capital"
    ],
    [
      "A. Equity Security",
      "B. Debt Security",
      "C. Hybrid Security",
      "D. Stocks"
    ],
    [
      "A. Derivatives",
      "B. Capital Markets",
      "C. Money Markets",
      "D. Over the Counter"
    ],
    [
      "A. Derivatives",
      "B. Capital Markets",
      "C. Money Markets",
      "D. Over the Counter"
    ],
    [
      "A. Derivatives",
      "B. Capital Markets",
      "C. Money Markets",
      "D. Over the Counter"
    ],
    [
      "A. Derivatives",
      "B. Capital Markets",
      "C. Money Markets",
      "D. Over the Counter"
    ],
    [
      "A. Secured Debt",
      "B. Unsercured Debt",
      "C. Personal Debt",
      "D. Fixed Income"
    ],
    ["A. Character", "B. Capacity", "C. Collateral", "D. Condition"],
    ["A. Character", "B. Capacity", "C. Collateral", "D. Condition"],
    ["A. Character", "B. Capacity", "C. Collateral", "D. Condition"],
    [
      "A. Credit Investigation",
      "B. Credit Track Record",
      "C. 5 C's of Credit",
      "D. Credit History"
    ],
    ["A. Credit Card", "B. Debit Card", "C. ATM Card", "D. Premium Card"],
    ["A. Credit Card", "B. Debit Card", "C. ATM Card", "D. Premium Card"],
    ["A. Spending", "B.Investing", "C. Protection", "D. Saving"],
    ["A. Spending", "B.Investing", "C. Protection", "D. Saving"],
    ["A. True", "B. False"]
  ];

  var correctAnswers = [
    "C. Budget",
    "D. Expenses",
    "B. Fixed Expenses",
    "A. Trust",
    "C. Variable Expenses",
    "A. Income",
    "B. Fraud",
    "C. Pyramid Scheme",
    "A. Ponzi Scheme",
    "D. Personal Finance",
    "C. Income Statement",
    "A. Cash Flow Statement",
    "B. Balance Sheet",
    "A. Assets",
    "B. Personal Bankruptcy",
    "A. True",
    "A. True",
    "A. True",
    "B. False",
    "A. True",
    "D. Insurance",
    "C. Life Insurance",
    "C. Premium",
    "B. Beneficiary",
    "D. Insurance Policy",
    "B. Wealth",
    "C. Passive Income",
    "B. Active Income",
    "A. Future Value",
    "B. False",
    "B. Risk",
    "C.Securities",
    "A. Equity Security",
    "B. Debt Security",
    "C. Hybrid Security",
    "C. Money Markets",
    "B. Capital Markets",
    "A. Derivatives",
    "D. Over the Counter",
    "C. Personal Debt",
    "A. Character",
    "B. Capacity",
    "C. Collateral",
    "C. 5 C's of Credit",
    "B. Debit Card",
    "A. Credit Card",
    "D. Saving",
    "B. Investing",
    "A. True"
  ];
}

class Q2 {
  var questions = [
    "It is putting your money  into something with expectation of gain that upon thourough analysis has a high degree of security for the principal amount, as well as security in return, within an expected period of time.",
    "These investments are undertaken with an expectation of increasing the current economy's capital stock that consists of goods and services",
    "This refers to the loss of principal amount of an investment",
    "It is defined as the actual income from a project as well as appreciation in the value of capital",
    "This is the individual that puts money into an entity such as business for a financial return",
    "The main goal of any investor is to maximize risk and minimize return",
    "It is the act of putting money into a business or organization to earn a profit",
    "It is the organization the regulates the investment risk in publicly traded companies in the Philippines",
    "This investor is someone who invests in securities or assets on their own, usually in smaller quantities.",
    "It is a company or an organization that invests money to buy securities or assets such as real estate",
    "It is the basic financial concept that holds that money in the present is worth more than the same sum of the money to be received in the future",
    "It is a market where people trade financial securities, commodities, and value at low transaction costs and at prices that reflect supply and demand",
    "Securities include stocks and bonds while Commodities include precious metals and agricultural products",
    "It is a market for short term funds which deals in monetary assets whose period of maturity is up to one year",
    "In the money market, the expected return is less due to short duration and lower risk",
    "It is a money-market security issued (sold) by large banks and corporations to get money to meet short-term debt obligations",
    "These are transactions or short-term loans in which two parties agree to sell and repurchase the same security.",
    "It refers to the whole network of organizations, institutions and instruments that deal in medium and long-term funds",
    "In the capital market, the expected returns are high as there in the scope of earning capital gains and long term prosperity is also shared by the company in the forms of dividends and bonus issues",
    "New shares are issued and sold to the investing public for the first time",
    " In this market, the original shareholders sell their shares to other investors",
    " It is an organized activity involving the buying and selling of securities done within the stock exchange",
    "Stock exhange is a capital raising mechanism",
    "They are the ones who serve as a middleman between the investors and the buyers/sellers",
    "Stocks of corporations not listed and therefore not traded in the stock exchange but registered and licensed by the Securities and Exchange Commission for sale to the public are only available in the so-called ____________",
    "Over the Counter inquiries are usually carried out by indirect inquiries",
    "It is the division of a bank or a financial institution that serves government, corporations, and institutions bby providing underwriting and mergers and acquisitions advisory services",
    "This function of Investment Banks serves the primary market or 'new capital'",
    "An offering is the issue of a sale of a security by a company",
    "A secondary offering is also called 'Initial Public Offering'",
    "Stocks are shares of ownership in a company",
    "As you acquire more stocks, your ownership stake in the company becomes greater",
    "It is a security usually purchased for participation in the profits and control of ownership and management of the company",
    "This date is when the dividend is formally declared by the board of directors",
    "Two days prior to date of record. ",
    "Investors shown to own stocks to this date receive the dividend",
    "The date when dividend checks are mailed",
    "It is a security whereby the holder has a higher claim on the assets and earnings of the company.",
    "Common stocks usually have a specified limited rate of return or dividend",
    "Preferred stockholders have voting rights",
    "These are shares of well-established and financially sound companies that have demonstrated their ability to pay dividends in both good and bad times.They also exhibit more modest but dependable returns and are relatively of lower risk.",
    "These are shares of those companies with good dividend payment history due to steady profits.These stocks also have a lower level of volatility since they are stable.",
    "Also called “glamour stocks”,are shares of corporations whose earnings are expected to grow at an above-average rate relative to the market.",
    "These are shares that provide regular dividends and stable earnings,regardless of the overall condition of the stock market.",
    "These stocks are sensitive to business conditions strongly tied with the economy’s performance. ",
    "These are stocks that rise quickly when economic growth is strong and falls rapidly when growth is slowing down.",
    "It refers to the returns in current peso in an investment",
    "This return reflects any gain or loss in purchasing power",
    "It is the return that an investor expects when initiating an investment.",
    "It is the return the investor actually receives,in contrast to the return that he or she expects.",
    "It is generally defined as the probability that an asset’s actual return will differ from its expected return",
    "It is the return uncertainty caused by economy wide developments.",
    "It is the return uncertainty caused by firm specific developments.",
    "This method focuses on describing and measuring return uncertainties associated with investments.",
    "It is a type of asset that allows you to earn interest for the money that you allow to be borrowed to an institution,generally businesses and the government.",
    "Bonds are usually described to be riskier than other aggressive assets such as corporate stocks",
    "A bond is a debt which can also be considered as an obligation where the company provides the details of the loans and payments",
    "Bonds are generally viewed as safer investments than stocks.",
    "It is trust that pools the savings of a number of investors who share a common financial goal thus the money collected is then invested in capital market instruments such as shares, debentures and other securities.",
    "The income earned through mutual investments and the capital appreciation realized are shared by its unit holders equally",
    "This type of mutual fund is considered to have the highest risk but with the potential for the biggest returns in the long term",
    "One of the advantages of mutual funds is their reports are more transparent and has a higher level of accountability",
    "This type of mutual fund invests in a mix officed-income investments like treasury notes,government securities,and commercial papers",
    "This type of mutual fund invests primarily in short-term debt securities like time deposits and corporate bonds. It is considered to be the safest Mutual Fund type but also generates the least amount of return for your money.",
    "Having better potential gains means you have a better chance of protecting your capital against inflation.",
    "Compared to a savings account in a bank,your money will have better growth potential when invested in Mutual Fund.",
    "Like deposits made with banks,an investment in the Mutual Fund is guaranteed by the Philippine Deposit Insurance Corporation(PDIC).",
    "The performance of the Fund is also dependent on the Fund Manager's skills.",
    "The influence that the investors can exert over the control and management of the Mutual Fund increases proportionately",
    "The Mutual Fund's investments and operations are subject to various regulations affecting among others,accounting of assets and taxation.",
    "This is where currencies are bought and sold according to the current price.",
    "This type of investing involves the purchase, ownership, management, rental and/or sale of the investment for profit.",
    "It is the most popular of all the precious metals when it comes to investment",
    "These funds derived this name due to their core idea to generate consistent return and preserve capital, instead of focusing on the magnitude of returns.",
    "Hedge funds are best known for investments in risky assets and derivatives.",
    "Compared to other precious metals used for investment, Platinum has the most effective safe haven and hedging properties across a number of countries.",
    "It is a method of measuring a security's intrinsic value by examining related economic and financial factors.",
    "This analysis involves assessing or examining topics or issues from an economist's perspective.",
    "This analysis is a market assessment tool used by businesses and analysts to understand the competitive dynamics of an industry.",
    "A SWOT Analysis can be a great way of summarizing various industry forces and determining their implications for the business in question.",
    "It is a process carried out by investors to evaluate securities,collecting informations related to the company's profile,products and services as well as profitability.",
    "This analysis can be referred as a process of understanding the risk and profitability of a company by analyzing reported financial info, especially annual and quarterly reports.",
    "To become a fundamental analyst, one does not require any special skill. Common sense, basic mathematics, and a bit of business sense is all that is required",
    "Fundamental Analysis is used to make short term investments",
    "It is a tool,or method,used to predict the probable future price movement of a security such as a stock or currency pair based on market data.",
    "Technical traders believe that current or past price action in the market is the most reliable indicator of future price action.",
    "The highest point of a candle stick shows the lowest price a security traded at during that time period.",
    "It is a price point underneath a market that shows heaviness in buying sufficient enough to prevent prices from falling down",
    "It is a price point above a market that shows heaviness in selling sufficient enough to prevent prices from rising up.",
    "It is a condition where prices push themselves above a pattern's Resistance commanding a “Buy”.",
    "It is a condition where prices push themselves below a pattern's Support commanding a “Sell”.",
    "If Technical Analysis is done well, it can improve your profitability as a trader",
    "Technical Indicators are 100% accurate all the time",
    "Over the long term,the stock prices of a fundamentally strong company tend to appreciate, thereby creating wealth for its investors.",
    "Microeconomic analysis includes factors such as interest rates,inflation,and growth in unemployment.",
    "The first assumption of Fundamental Analysis is about the price of the stock market which fully reflects a stock's real value",
    "It is the aspect/factor that describes the characteristics of a business which give advantages over its competitors",
    "These are elements of a company that allow it to formulate and implement strategies to increase profitability",
    "The tools required for Fundamental Aanalysis are difficult to find, most of these tools are unavailable and needs payment before using"
  ];

  var choices = [
    [
      "A. Personal Investment",
      "B. Economic Investment",
      "C. Financial Invesment",
      "D. Mutual Funds"
    ],
    [
      "A. Personal Investment",
      "B. Economic Investment",
      "C. Financial Invesment",
      "D. Mutual Funds"
    ],
    ["A. Risk", "B. Net loss", "C. Bankruptcy", "D. Threat"],
    ["A. Profit", "B. Gain", "C. Net Income", "D. Return"],
    [
      "A. Financial Manager",
      "B. Investment Banker",
      "C. Investor",
      "D. Businessman"
    ],
    ["A. True", "B. False"],
    ["A. Loan", "B. Investing", "C. Lending", "D. Deposit"],
    [
      "A. Insurance Commission",
      "B. Bangko Sentral ng Pilipinas",
      "C. Department of Finance",
      "D. Securities and Exchange Commission"
    ],
    [
      "A. Retail Investor",
      "B. Venture Capitalist",
      "C. Institutional Investor",
      "D. Banks"
    ],
    [
      "A. Retail Investor",
      "B. Venture Capitalist",
      "C. Institutional Investor",
      "D. Banks"
    ],
    [
      "A. Future Value",
      "B. Present Value",
      "C. Time Value",
      "D. Investment Value"
    ],
    [
      "A. Capital Market",
      "B. Money Market",
      "C. Financial Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    [
      "A. Capital Market",
      "B. Money Market",
      "C. Financial Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    [
      "A. Banker's Acceptance",
      "B. Commercial Papers",
      "C. Treasury Bills and Notes",
      "D. Repurchase Agreements"
    ],
    [
      "A. Banker's Acceptance",
      "B. Commercial Papers",
      "C. Treasury Bills and Notes",
      "D. Repurchase Agreements"
    ],
    [
      "A. Capital Market",
      "B. Money Market",
      "C.Financial Market",
      "D.Over the Counter"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Financial Market",
      "B. Primary Market",
      "C. Secondary Market",
      "D. Over the Counter"
    ],
    [
      "A. Primary Market",
      "B. Secondary Market",
      "C. Stock Market",
      "D. Over the Counter"
    ],
    ["A. True", "B. False"],
    ["A. Stock Agent", "B. Broker", "C. Investor", "D. Traders"],
    [
      "A.Fixed Income Market",
      "B. Primary Market",
      "C. Secondary Market",
      "D.Over the Counter Market"
    ],
    ["A. True", "B. False"],
    [
      "A. Corporate Banking",
      "B. Private Banking",
      "C. Investment Banking",
      "D. Retail Banking"
    ],
    [
      "A. Underwriting",
      "B. Sales and Trading",
      "C. Mergers and Acquisitions",
      "D. Equity Research"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Preferred Stocks",
      "B. Common Stocks",
      "C. Cash Dividends",
      "D. Stock Dividends"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Declaration Date",
      "B. Ex-Dividend Date",
      "C. Record Date",
      "D. Payment Date"
    ],
    [
      "A. Preferred Stocks",
      "B. Common Stocks",
      "C. Cash Dividends",
      "D. Stock Dividends"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Blue Chip Stocks",
      "B. Income Stocks",
      "C. Growth Stocks",
      "D. Defensive Stocks"
    ],
    [
      "A. Growth Stocks",
      "B. Defensive Stocks",
      "C. Cyclical Stocks",
      "D.Speculative Stocks"
    ],
    [
      "A. Growth Stocks",
      "B. Defensive Stocks",
      "C. Cyclical Stocks",
      "D.Speculative Stocks"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Real Return",
      "B. Nominal Return",
      "C. Realized Return",
      "D. Expected Return"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Systematic Risk",
      "B. Unsystematic Risk",
      "C. Investment Risk",
      "D. Total Risk"
    ],
    [
      "A. Risk Register",
      "B. Risk Identification",
      "C. Risk Analysis",
      "D. Risk Reduction"
    ],
    ["A. Stock Agent", "B. Bond", "C. Commercial Paper", "D. Bills"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Stocks", "B. Bonds", "C. Mutual Funds", "D. Derivatives"],
    ["A. True", "B. False"],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    ["A. True", "B. False"],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    [
      "A. Money Market Funds",
      "B. Bond Funds",
      "C.Balanced Funds",
      "D. Equity Funds"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Foreign Exchange",
      "B. Stock Market",
      "C. Spot Market",
      "D. Currency Market"
    ],
    ["A. ForEx", "B.  Real Estate", "C. Mutual Funds", "D. Stocks"],
    ["A. Gold", "B. Platinum", "C. Palladium", "D. Brass"],
    [
      "A. Mutual Funds",
      "B. Private Equity",
      "C. Balanced Funds",
      "D. Hedge Funds"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    [
      "A. Company Analysis",
      "B. Cost/Benefit Analysis",
      "C. Financial Statement Analysis",
      "D. Industry Analysis"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    [
      "A. Risk Analysis",
      "B. Fundamental Analysis",
      "C. Technical Analysis",
      "D. Economic Analysis"
    ],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Support", "B.Resistance"],
    ["A. Support", "B.Resistance"],
    ["A. Breakout", "B. Breakdown"],
    ["A. Breakout", "B. Breakdown"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. True", "B. False"],
    ["A. Strength", "B. Weakness", "C. Opportunities", "D. Threats"],
    ["A. Strength", "B. Weakness", "C. Opportunities", "D. Threats"],
    ["A. True", "B. False"],
  ];

  var correctAnswers = [
    "C. Financial Invesment",
    "B. Economic Investment",
    "A. Risk",
    "D. Return",
    "C. Investor",
    "B. False",
    "B. Investing",
    "D. Securities and Exchange Commission",
    "A. Retail Investor",
    "C. Institutional Investor",
    "C. Time Value",
    "C. Financial Market",
    "A. True",
    "B. Money Market",
    "A. True",
    "B. Commercial Papers",
    "D. Repurchase Agreements",
    "A. Capital Market",
    "A. True",
    "A. True",
    "C. Secondary Market",
    "C. Stock Market",
    "B. False",
    "B. Broker",
    "D.Over the Counter Market",
    "B. False",
    "C. Investment Banking",
    "A. Underwriting",
    "A. True",
    "B. False",
    "A. True",
    "A. True",
    "B. Common Stocks",
    "A. Declaration Date",
    "B. Ex-Dividend Date",
    "C. Record Date",
    "D. Payment Date",
    "A. Preferred Stocks",
    "B. False",
    "B. False",
    "A. Blue Chip Stocks",
    "B. Income Stocks",
    "C. Growth Stocks",
    "D. Defensive Stocks",
    "C. Cyclical Stocks",
    "D.Speculative Stocks"
        "B. Nominal Return",
    "A. Real Return",
    "D. Expected Return",
    "C. Realized Return",
    "C. Investment Risk",
    "A. Systematic Risk",
    "B. Unsystematic Risk",
    "C. Risk Analysis",
    "B. Bond",
    "B. False",
    "A. True",
    "A. True",
    "C. Mutual Funds",
    "B. False",
    "D. Equity Funds",
    "A. True",
    "B. Bond Funds",
    "A. Money Market Funds",
    "C.Balanced Funds",
    "A. True",
    "A. True",
    "B. False",
    "A. True",
    "B. False",
    "A. True",
    "C. Spot Market",
    "B.  Real Estate",
    "A. Gold",
    "D. Hedge Funds" "A. True",
    "B. False",
    "B. Fundamental Analysis",
    "D. Economic Analysis",
    "B. Fundamental Analysis",
    "A. True",
    "C. Technical Analysis",
    "C. Financial Statement Analysis",
    "A. True",
    "B. False",
    "C. Technical Analysis",
    "A. True",
    "B. False",
    "C. Technical Analysis",
    "A. True",
    "B. False",
    "A. Support",
    "B.Resistance",
    "A. Support",
    "B.Resistance",
    "A. True",
    "B. False",
    "A. True",
    "B. False",
    "A. Strength",
    "C. Opportunities",
    "B. False"
  ];
}

class Q3 {
  var questions = ["testing"];

  var choices = [
    ["test a", "test b", "test c", "test d"]
  ];

  var correctAnswers = ["test a"];
}

class Q4 {
  var questions = ["testing"];

  var choices = [
    ["test a", "test b", "test c", "test d"]
  ];

  var correctAnswers = ["test a"];
}

class Quiz1 extends StatefulWidget {
  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  //Generate random number from 0 to number of question
  int randomNumber = Random().nextInt(quiz1.questions.length);
  //widget for choices
  Widget Choices(String abcd, int x) {
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
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          if (quiz1.choices[randomNumber][x] ==
              quiz1.correctAnswers[randomNumber]) {
            debugPrint("Correct");
            correct++;
          } else {
            debugPrint("Wrong");
            wrong++;
          }
          //Generate random number from 0 to number of question
          randomNumber = Random().nextInt(quiz1.questions.length);
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(81, 231, 168, 100),
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

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Personal Finance",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
          elevation: 3, // 0 yung value para mawala yung back shadow sa app bar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              reset(),
              Navigator.pop(context),
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Question No. Line
                      new Text(
                        "Question ${questionNumber}",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins Medium',
                            fontWeight: FontWeight.w500),
                      ),

                      // Question-Box
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: new Center(
                          child: AutoSizeText(
                            quiz1.questions[randomNumber],
                            maxLines: 6,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(81, 231, 168, 100),
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
                      for (var x = 0;
                          x < quiz1.choices[randomNumber].length;
                          x++) ...[
                        //call widget for choices and pass 2 parameters
                        Choices(quiz1.choices[randomNumber][x], x),
                        const Padding(padding: EdgeInsets.all(5.0))
                      ],

                      //skip
                      new MaterialButton(
                        height: 35.0,
                        minWidth: 120.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(5, 195, 107, 50), width: 3),
                        ),
                        child: new Text(
                          "SKIP ",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontFamily: 'Poppins Medium',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {
                          //Generate random number from 0 to number of question
                          randomNumber =
                              Random().nextInt(quiz1.questions.length),
                          //call a function after clicking any button
                          updateQuestion(),
                          skip++,
                        },
                        splashColor: Color.fromRGBO(5, 195, 107, 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber == 10) {
        //Proceed to the result page
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Result()));
      } else {
        //proceed to next question
        questionNumber++;
      }
    });
  }
}

class Quiz2 extends StatefulWidget {
  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  //Generate random number from 0 to number of question
  int randomNumber = Random().nextInt(quiz2.questions.length);
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
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          if (quiz2.choices[randomNumber][x] ==
              quiz2.correctAnswers[randomNumber]) {
            debugPrint("Correct");
            correct++;
          } else {
            debugPrint("Wrong");
            wrong++;
          }
          //Generate random number from 0 to number of question
          randomNumber = Random().nextInt(quiz2.questions.length);
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(81, 231, 168, 100),
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

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Investment and Portfolio Management",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
          elevation: 3, // 0 yung value para mawala yung back shadow sa app bar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Question No. Line
                      new Text(
                        "Question ${questionNumber}",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins Medium',
                            fontWeight: FontWeight.w500),
                      ),

                      // Question-Box
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: new Center(
                          child: AutoSizeText(
                            quiz2.questions[randomNumber],
                            maxLines: 6,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(81, 231, 168, 100),
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
                      for (var x = 0;
                          x < quiz2.choices[randomNumber].length;
                          x++) ...[
                        //call widget for choices and pass 2 parameters
                        choose(quiz2.choices[randomNumber][x], x),
                        const Padding(padding: EdgeInsets.all(5.0))
                      ],

                      //skip
                      new MaterialButton(
                        height: 35.0,
                        minWidth: 120.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(5, 195, 107, 50), width: 3),
                        ),
                        child: new Text(
                          "SKIP ",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontFamily: 'Poppins Medium',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {
                          //Generate random number from 0 to number of question
                          randomNumber =
                              Random().nextInt(quiz1.questions.length),
                          //call a function after clicking any button
                          updateQuestion(),
                          skip++,
                        },
                        splashColor: Color.fromRGBO(5, 195, 107, 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber == 10) {
        //Proceed to the result page
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Result()));
      } else {
        //proceed to next question
        questionNumber++;
      }
    });
  }
}

class Quiz3 extends StatefulWidget {
  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  //Generate random number from 0 to number of question
  int randomNumber = Random().nextInt(quiz3.questions.length);
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
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          if (quiz3.choices[randomNumber][x] ==
              quiz3.correctAnswers[randomNumber]) {
            debugPrint("Correct");
            correct++;
          } else {
            debugPrint("Wrong");
            wrong++;
          }
          //Generate random number from 0 to number of question
          randomNumber = Random().nextInt(quiz3.questions.length);
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(81, 231, 168, 100),
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

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Behavioral Finance",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
          elevation: 3, // 0 yung value para mawala yung back shadow sa app bar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Question No. Line
                      new Text(
                        "Question ${questionNumber}",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins Medium',
                            fontWeight: FontWeight.w500),
                      ),

                      // Question-Box
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: new Center(
                          child: AutoSizeText(
                            quiz3.questions[randomNumber],
                            maxLines: 6,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(81, 231, 168, 100),
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
                      for (var x = 0;
                          x < quiz3.choices[randomNumber].length;
                          x++) ...[
                        //call widget for choices and pass 2 parameters
                        choose(quiz3.choices[randomNumber][x], x),
                        const Padding(padding: EdgeInsets.all(5.0))
                      ],

                      //skip
                      new MaterialButton(
                        height: 35.0,
                        minWidth: 120.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(5, 195, 107, 50), width: 3),
                        ),
                        child: new Text(
                          "SKIP ",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontFamily: 'Poppins Medium',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {
                          //Generate random number from 0 to number of question
                          randomNumber =
                              Random().nextInt(quiz1.questions.length),
                          //call a function after clicking any button
                          updateQuestion(),
                          skip++,
                        },
                        splashColor: Color.fromRGBO(5, 195, 107, 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber == 10) {
        //Proceed to the result page
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Result()));
      } else {
        //proceed to next question
        questionNumber++;
      }
    });
  }
}

class Quiz4 extends StatefulWidget {
  @override
  State<Quiz4> createState() => _Quiz4State();
}

class _Quiz4State extends State<Quiz4> {
  //Generate random number from 0 to number of question
  int randomNumber = Random().nextInt(quiz4.questions.length);
  //widget for choices
  Widget Choices(String abcd, int x) {
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
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          if (quiz4.choices[randomNumber][x] ==
              quiz4.correctAnswers[randomNumber]) {
            debugPrint("Correct");
            correct++;
          } else {
            debugPrint("Wrong");
            wrong++;
          }
          //Generate random number from 0 to number of question
          randomNumber = Random().nextInt(quiz4.questions.length);
          //call a function after clicking any button
          updateQuestion();
        },
        splashColor: Color.fromRGBO(5, 195, 107, 100),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(81, 231, 168, 100),
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

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Capital Market",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
          elevation: 3, // 0 yung value para mawala yung back shadow sa app bar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            iconSize: 35,
            color: Colors.black,
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 15),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Question No. Line
                      new Text(
                        "Question ${questionNumber}",
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins Medium',
                            fontWeight: FontWeight.w500),
                      ),

                      // Question-Box
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: new Center(
                          child: AutoSizeText(
                            quiz4.questions[randomNumber],
                            maxLines: 6,
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(81, 231, 168, 100),
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
                      for (var x = 0;
                          x < quiz4.choices[randomNumber].length;
                          x++) ...[
                        //call widget for choices and pass 2 parameters
                        Choices(quiz4.choices[randomNumber][x], x),
                        const Padding(padding: EdgeInsets.all(5.0))
                      ],

                      //skip
                      new MaterialButton(
                        height: 35.0,
                        minWidth: 120.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromRGBO(5, 195, 107, 50), width: 3),
                        ),
                        child: new Text(
                          "SKIP ",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontFamily: 'Poppins Medium',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {
                          //Generate random number from 0 to number of question
                          randomNumber =
                              Random().nextInt(quiz1.questions.length),
                          //call a function after clicking any button
                          updateQuestion(),
                          skip++,
                        },
                        splashColor: Color.fromRGBO(5, 195, 107, 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void updateQuestion() {
    setState(() {
      if (questionNumber == 10) {
        //Proceed to the result page
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Result()));
      } else {
        //proceed to next question
        questionNumber++;
      }
    });
  }
}

class Result extends StatelessWidget {
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
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 6),
                        Container(
                          //padding: const EdgeInsets.all(16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CircularPercentIndicator(
                                  // add dependencies percent_indicator: ^3.4.0]
                                  radius: 160.0,
                                  lineWidth: 16.0,
                                  animation: true,
                                  percent: correct / 10,
                                  center: Text(
                                    "$correct/10", //pedeng score na lang instead of percentage
                                    style: TextStyle(
                                        fontFamily: 'Poppins-SemiBold',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 40.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor:
                                      Color.fromRGBO(5, 195, 107, 100),
                                  backgroundColor:
                                      Color.fromRGBO(83, 215, 80, 0.3),
                                ),
                              ]),
                        ),

                        //Time-Taken (10mins 35 secs)
                        SizedBox(height: 8),
                        Container(
                          child: Column(children: <Widget>[
                            const Text(
                              "Time Taken: -",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                        ),

                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 10),

                                //Correct
                                Container(
                                  //height: 80.0, //80 talaga
                                  width: 85.0, //85
                                  margin: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Correct ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 15.0, //20 talaga
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "$correct",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 25.0, //20 talaga
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(81, 231, 168, 100),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(81, 231, 168, 45),
                                        offset: Offset(
                                          -3.0,
                                          4.0,
                                        ),
                                        blurRadius: 8.0,
                                      ),
                                    ],
                                  ),
                                ),

                                //Wrong
                                new Padding(
                                  padding: const EdgeInsets.all(10.0),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  //height: 80.0, //80 talaga
                                  width: 85.0, //85
                                  margin: EdgeInsets.all(8.0),

                                  child: Column(
                                    children: [
                                      Text(
                                        "Wrong",
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "$wrong",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 25.0, //20 talaga
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(243, 83, 86, 100),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(243, 83, 86, 45),
                                        offset: Offset(
                                          -3.0,
                                          4.0,
                                        ),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),

                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 10),

                                //Skipped
                                Container(
                                  //height: 80.0, //80 talaga
                                  width: 85.0, //85
                                  margin: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Skipped",
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "$skip",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 25.0, //20 talaga
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(240, 243, 60, 100),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(240, 243, 60, 45),
                                        offset: Offset(
                                          -3.0,
                                          4.0,
                                        ),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                ),

                                //attempts
                                new Padding(
                                  padding: const EdgeInsets.all(10.0),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  //height: 80.0, //80 talaga
                                  width: 85.0, //85
                                  margin: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Attempts",
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "$attempt",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins-SemiBold',
                                          fontSize: 25.0, //20 talaga
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(208, 241, 207, 100),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(208, 241, 207, 100),
                                        offset: Offset(
                                          -3.0,
                                          4.0,
                                        ),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),

                        SizedBox(height: 10),
                        //back button-details
                        Container(
                          padding: const EdgeInsets.all(14.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(height: 30),
                              //back button
                              new MaterialButton(
                                height: 37.0,
                                minWidth: 121.0,
                                color: Color.fromRGBO(5, 195, 107, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: new Text(
                                  "BACK ",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () =>
                                    {reset(), Navigator.pop(context)},
                                splashColor: Color.fromRGBO(5, 195, 107, 50),
                              ),

                              //details buttons
                              new Padding(
                                padding: const EdgeInsets.all(14.0),
                              ),
                              const SizedBox(height: 30),
                              new MaterialButton(
                                height: 37.0,
                                minWidth: 121.0,
                                color: Color.fromRGBO(5, 195, 107, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: new Text(
                                  "DETAILS ",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () => {},
                                splashColor: Color.fromRGBO(5, 195, 107, 50),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      );
}
