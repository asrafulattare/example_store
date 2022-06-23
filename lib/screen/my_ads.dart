import 'package:example_store/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/gride_tile.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen>
    with SingleTickerProviderStateMixin {
  final List<String> titleList = ["My Ads", "My Favourites"];
  String? currentTitle;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    currentTitle = titleList[0];
    tabController.addListener(changeTitle);
  }

  void changeTitle() {
    setState(() {
      // get index of active tab & change current appbar title
      currentTitle = titleList[tabController.index];
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$currentTitle',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        bottom: TabBar(
          indicatorColor: Colors.black,
          controller: tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: titleList[0],
              icon: const FaIcon(FontAwesomeIcons.bagShopping),
            ),
            Tab(
              text: titleList[1],
              icon: const FaIcon(FontAwesomeIcons.heart),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: SliverGridProduct(itemCount: 2),
          ),
          ListViewProducts(itemCount: 2),
        ],
      ),
    );
  }
}
