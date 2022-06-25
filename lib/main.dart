import 'package:example_store/bottom_nev_controol.dart';
import 'package:example_store/screen/account.dart';
import 'package:example_store/screen/add.dart';
import 'package:example_store/screen/chat.dart';
import 'package:example_store/screen/details_screen.dart';
import 'package:example_store/screen/login.dart';
import 'package:example_store/screen/my_ads.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNevController(),
        '/myAdsScreen': (context) => const MyAdsScreen(),
        '/addScreen': (context) => AddScreen(),
        '/chatScreen': (context) => const ChatScreen(),
        '/accountScreen': (context) => const MyAccountScreen(),
        '/detailsScreen': (context) => const DetailsScrenn(),
        '/loginScreen': (context) => LoginScreen(),
      },
    );
  }
}
