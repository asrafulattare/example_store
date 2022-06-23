import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second-screen');
              },
              child: const Text("Assalawlikum"))
        ]),
      ),
    );
  }
}
