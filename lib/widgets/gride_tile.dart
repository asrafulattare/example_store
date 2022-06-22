import 'package:flutter/material.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.builder(
          itemCount: itemCount,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.3,
              crossAxisCount: 2),
          itemBuilder: (_, index) {
            return grideTile();
          }),
    );
  }
}

Widget grideTile() {
  return Padding(
    padding: const EdgeInsets.only(top: 60.0, right: 20),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Container(
        height: 170,
        width: 150,
        color: Colors.white10,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              top: -150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/watch.png",
                    width: 120,
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Apple Watch",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    Text("Series 6 . Red",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey)),
                    Text(
                      "\$ 359",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
