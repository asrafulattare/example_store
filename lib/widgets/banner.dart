import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            color: Colors.orange,
            elevation: 1.0,
            margin: const EdgeInsets.all(4.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: SizedBox(
              height: 150,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "40% off during \nCovid 19",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/vegetables.png",
                        fit: BoxFit.cover,
                        width: 130,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Card(
            color: Colors.green,
            elevation: 1.0,
            margin: const EdgeInsets.all(4.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: SizedBox(
              height: 150,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "40% off during \nCovid 19",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/vegetables.png",
                        fit: BoxFit.cover,
                        width: 130,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Card(
            color: Colors.orange,
            elevation: 1.0,
            margin: const EdgeInsets.all(4.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: SizedBox(
              height: 150,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "40% off during \nCovid 19",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/vegetables.png",
                        fit: BoxFit.cover,
                        width: 130,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
