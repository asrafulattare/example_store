import 'package:flutter/material.dart';

import '../widgets/banner.dart';
import '../widgets/gride_tile.dart';
import '../widgets/toplistcategoris.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

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
    // final List name = ModalRoute.of(context)!.settings.arguments as List;
    // final List name1 = (name == null)
    //     ? [
    //         'Name',
    //         'Email',
    //       ]
    //     : [
    //         name[0],
    //         name[1],
    //       ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: NewWidget(
            categories: _categories,
          ),
        )));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required List<String> categories,
    this.name,
    this.email,
  })  : _categories = categories,
        super(key: key);

  final String? name;
  final String? email;

  final List<String> _categories;

  final hight10 = const SliverToBoxAdapter(
    child: SizedBox(
      height: 10,
    ),
  );
  final hight20 = const SliverToBoxAdapter(
    child: SizedBox(
      height: 20,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          centerTitle: false,
          toolbarHeight: 110,
          titleSpacing: 0.0,
          pinned: false,
          backgroundColor: Colors.white,
          title: Expanded(
            child: SafeArea(
              child: Positioned(
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Alex",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Text(
                      //   "$email",
                      //   style: GoogleFonts.lato(
                      //     textStyle: const TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w600),
                      //   ),
                      // ),
                      const Text(
                        "Lets get something?",
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: Text(
        //     "Hello Alex",
        //     style: GoogleFonts.lato(
        //       textStyle:
        //           const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        //     ),
        //   ),
        // ),
        // const SliverToBoxAdapter(
        //   child: Text(
        //     "Lets get something?",
        //     style: TextStyle(
        //         fontFamily: 'Pacifico',
        //         fontSize: 16,
        //         fontWeight: FontWeight.w600,
        //         color: Colors.grey),
        //   ),
        // ),
        hight10,
        const SliverToBoxAdapter(
          child: HomeBanner(),
        ),
        hight20,
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
        hight10,
        SliverToBoxAdapter(
          child: TopListCatgoris(categories: _categories),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverGridProduct(itemCount: 10),
        hight10,
      ],
    );
  }
}
