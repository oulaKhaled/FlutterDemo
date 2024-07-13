import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(30, 50, 20, 12),
      child: Column(children: <Widget>[
        Text(
          "Welcome To my project",
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          "This is a beginning to learn more about Flutter for my internship",
          style:
              TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
        ),
        Center(
          child: Image(
            image: AssetImage("assets/flutter.jpg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  minWidth: double.infinity,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  minWidth: double.infinity,
                  height: 50.0,
                  color: Color.fromARGB(255, 1, 89, 160),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  )),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
