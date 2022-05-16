import 'package:flutter/material.dart';
import 'package:investor_quizapp/pages/history.dart';
import 'package:investor_quizapp/pages/home.dart';
import 'package:investor_quizapp/pages/profile.dart';
import 'package:investor_quizapp/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investor Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final screens = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color.fromRGBO(81, 231, 168, 1),
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.bold)),
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => selectedIndex = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.content_paste_rounded),
                selectedIcon: Icon(Icons.content_paste_search_rounded),
                label: 'History'),
            NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: 'Profile'),
            NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings_rounded),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}

// App Color Scheme
//   Green     (#04c36b)  'Color.fromRGBO(4, 195, 107, 1)'
//   DarkGreen (#008037)  'Color.fromRGBO(0, 128, 55, 1)'
//   NeonGreen (#51e7a8)  'Color.fromRGBO(81, 231, 168, 1)'
//   LightGray (#E5E5E5)  'Color.fromRGBO(229, 229, 229, 1)'
//   White-ish (#FEFEFE)  'Color.fromRGBO(254, 254, 254, 1)'
//   OffWhite  (#F9F9F9)  'Color.fromRGBO(249, 249, 249, 1)'
