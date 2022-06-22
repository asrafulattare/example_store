import 'package:flutter/material.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return listTile();
        },
      ),
    );
  }
}

Widget listTile() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: ListTile(
        leading: Image.asset(
          "assets/watch.png",
        ),
        title: const Text("Apple Watch"),
        subtitle: const Text("Series 6 . Red"),
        trailing: const Text(
          "\$ 359",
          style: TextStyle(color: Colors.red),
        ),
      ),
    ),
  );
}
