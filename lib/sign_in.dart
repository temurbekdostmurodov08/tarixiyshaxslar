import 'package:flutter/material.dart';
import 'package:tarixiyshaxslar/sign_up.dart';

import 'animation/fade_animation.dart';
import 'home_page.dart';

class SignInPage extends StatefulWidget {
  static final String id = "sign_in_page";

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _myAnimation;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


    _doSignIn() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState?.save();
        Navigator.pushReplacementNamed(context, HomePage.id);
      }
    }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _myAnimation = Tween(begin: 1.0, end: 30.0).animate(_controller);
  }
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeAnimation(
                    Text(
                      "Tarixiy shahslar",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Billabong",
                          fontSize: 40),
                    ),
                    1),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200]),
                  child: TextFormField(
                    validator: (input) =>
                    !input!.contains("@")
                        ? "Please enter a valid email"
                        : null,
                    onSaved: (input) => _email = input!,
                    controller: emailController,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200]),
                  child: TextFormField(
                    validator: (input) =>
                    input!.length < 6
                        ? "Password 6 tadadn katta buladi"
                        : null,
                    onSaved: (input) => _password = input!,
                    obscureText: true,
                    controller: passwordController,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: _doSignIn,
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpPage.id);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
