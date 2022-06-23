import 'package:example_store/screen/account.dart';
import 'package:example_store/screen/add.dart';
import 'package:example_store/screen/chat.dart';
import 'package:example_store/screen/home.dart';
import 'package:example_store/screen/my_ads.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:awesome_icons/awesome_icons.dart';

class BottomNevController extends StatefulWidget {
  const BottomNevController({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNevController> createState() => _BottomNevControllerState();
}

class _BottomNevControllerState extends State<BottomNevController> {
  final _pages = [
    HomeScreen(),
    const MyAdsScreen(),
    AddScreen(),
    ChatScreen(),
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
              icon: Icon(
                FeatherIcons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                FeatherIcons.briefcase,
              ),
              label: "My Ads"),
          BottomNavigationBarItem(
              icon: Icon(
                FeatherIcons.plusCircle,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.commentDots,
              ),
              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(
                FeatherIcons.user,
              ),
              label: "Me"),
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
