import 'package:flutter/material.dart';

import '../widgets/banner.dart';
import '../widgets/gride_tile.dart';
import '../widgets/toplistcategoris.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                "Hello Alex",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Text(
                "Lets get something?",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: HomeBanner(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
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
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: TopListCatgoris(categories: _categories),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverGridProduct(itemCount: 10),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
