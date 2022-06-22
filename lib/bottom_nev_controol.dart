import 'package:example_store/screen/account.dart';
import 'package:example_store/screen/add.dart';
import 'package:example_store/screen/chat.dart';
import 'package:example_store/screen/home.dart';
import 'package:example_store/screen/my_ads.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNevController extends StatefulWidget {
  const BottomNevController({Key? key}) : super(key: key);

  @override
  State<BottomNevController> createState() => _BottomNevControllerState();
}

class _BottomNevControllerState extends State<BottomNevController> {
  final _pages = [
    HomeScreen(),
    MyAdsScreen(),
    const ChatScreen(),
    const AddScreen(),
    const MyAccountScreen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bagShopping), label: "My Ads"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidSquarePlus), label: "Add"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidMessage), label: "Message"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidUser), label: "My Account"),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
