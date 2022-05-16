import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text(
          'SETTINGS',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins-ExtraBold',
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, // 0 yung value para mawala yung back shadow sa app bar
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.bookmark),
        //     iconSize: 35,
        //     color: Colors.black,
        //     onPressed: () => {}, //no action
        //   ),
        // ],
      ),
      body: const Center(
        child: Text(
          'Settings',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
