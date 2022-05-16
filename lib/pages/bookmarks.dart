import 'package:flutter/material.dart';

class Bookmarks extends StatelessWidget {
  const Bookmarks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color.fromRGBO(81, 231, 168, 1),
      appBar: AppBar(
        title: const Text(
          'BOOKMARKS',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins-ExtraBold',
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
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
      body: const Center(
        child: Text(
          'Bookmarks',
          style: TextStyle(fontSize: 60),
        ),
      ));
}
