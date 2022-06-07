import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/pages/historyCategory.dart';
import '/pages/home.dart';
import '/pages/profile.dart';
import '/pages/settings.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('Personal_Finance');
  await Hive.openBox('Investment_and_Portfolio_Management');
  await Hive.openBox('Behavioral_Finance');
  await Hive.openBox('Capital_Market');
  await Hive.openBox('Profile_data');
  runApp(const MyApp());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/logo_animated.gif',
          height: 280, width: 280),
      backgroundColor: Colors.white,
      nextScreen: const MainPage(),
      splashIconSize: 280,
      duration: 3000, //1000 = 1 sec (default 2500)
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Investor Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      ),
      home: const SplashScreen(),
      //Kung debugging pwede paltan home ng MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    _assetsAudioPlayer.open(
      Audio('assets/music/Enjoy_the_Experience.mp3'),
      autoStart: true,
    );
  }

  int selectedIndex = 0;
  final screens = [
    HomePage(),
    const HistoryPages(),
    const ProfilePage(),
    const SettingsPage(),
  ];
  DateTime? lastPressed;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        final maxDuration = Duration(seconds: 2);
        final isWarning =
            lastPressed == null || now.difference(lastPressed!) > maxDuration;

        if (isWarning) {
          lastPressed = DateTime.now();
          final snackBar = SnackBar(
            content: Text('Double Tap to Close App'),
            duration: maxDuration,
          );

          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar);

          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
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
      ),
    );
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }
}

// App Color Scheme
//   Green     (#04c36b)  'Color.fromRGBO(4, 195, 107, 1)'
//   DarkGreen (#008037)  'Color.fromRGBO(0, 128, 55, 1)'
//   NeonGreen (#51e7a8)  'Color.fromRGBO(81, 231, 168, 1)'
//   LightGray (#E5E5E5)  'Color.fromRGBO(229, 229, 229, 1)'
//   White-ish (#FEFEFE)  'Color.fromRGBO(254, 254, 254, 1)'
//   OffWhite  (#F9F9F9)  'Color.fromRGBO(249, 249, 249, 1)'
