import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import "home.dart";
import "Profile.dart";

void main() {
  runApp(mainWidget());
}

class mainWidget extends StatelessWidget {
  const mainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: {
          "/": (context) => Home(),
          "/login": (context) => Login(),
          "/signup": (context) => Signup(),
          "/profile": (context) => Profile(),
        }));
  }
}
