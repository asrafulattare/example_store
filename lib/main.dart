import 'package:example_store/bottom_nev_controol.dart';
import 'package:example_store/screen/add.dart';
import 'package:example_store/screen/details_screen.dart';
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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/first-screen': (context) => AddScreen(),
        '/second-screen': (context) => const DetailsScrenn(),
      },
      // home: BottomNevController(),
      home: const BottomNevController(),
    );
  }
}
