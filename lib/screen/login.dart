import 'package:example_store/bottom_nev_controol.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  String name = "";
  String email = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: RouteSettings(arguments: [
                name,
                email,
              ]),
              builder: (context) => BottomNevController(
                    name1: name,
                  )));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                Image.asset(
                  "assets/login.png",
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _controller,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Enter your name",
                          labelText: "Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can not be empty";
                          } else if (value.length < 4) {
                            return "minimum 4 characters required";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        //controller: _controller,
                        decoration: const InputDecoration(
                          hintText: "Enter email",
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email can not be empty";
                          } else if (value.length < 4) {
                            return "this fild is not empty";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          email = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        //controller: _controller,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
