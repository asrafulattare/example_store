import 'package:flutter/material.dart';

class DetailsScrenn extends StatelessWidget {
  const DetailsScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Walikum Assalam"))
        ]),
      ),
    );
  }
}
