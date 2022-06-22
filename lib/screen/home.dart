import 'package:flutter/material.dart';

import '../widgets/banner.dart';
import '../widgets/gride_tile.dart';
import '../widgets/toplistcategoris.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, this.userName}) : super(key: key);
  final String? userName;

  final List<String> _categories = [
    'Food',
    'Electronis',
    'Groceris',
    'Toys',
    'Camerea',
    'Food',
    'Electronis',
    'Groceris',
    'Toys',
    'Camerea',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello Alex",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Lets get something?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const HomeBanner(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top Categoris",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                TopListCatgoris(categories: _categories),
                const SizedBox(
                  height: 10,
                ),
                const GridViewProducts(itemCount: 10),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
