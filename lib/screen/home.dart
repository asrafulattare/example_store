import 'package:flutter/material.dart';

import '../widgets/banner.dart';
import '../widgets/gride_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 8, top: 8),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 30,
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                _categories[index],
                              ),
                            )),
                          ),
                        );
                      }),
                ),
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
