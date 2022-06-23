import 'package:example_store/screen/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      const InputDecoration(hintText: "Enter your email"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this fild is not empty";
                    } else if (val.length < 4) {
                      return "this fild is not empty";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration:
                      const InputDecoration(hintText: "Enter your name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this fild is not empty";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration:
                      const InputDecoration(hintText: "Enter your password"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "this fild is not empty";
                    } else if (val.length < 6) {
                      return "password length must be 6-8";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => const DetailsScrenn()));
                        }
                      },
                      child: const Text("Vaidted")),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(_controller.text);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
