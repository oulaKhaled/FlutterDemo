import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 6,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.blue,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ))
          ]),
      body: Column(
        children: <Widget>[
          Text(
            "Signup",
            style: GoogleFonts.oswald(fontSize: 50.0),
          ),
          Text("You can create new accoun here, it is free",
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold)),
          // SizedBox(
          //   height: 30.0,
          // ),

          /// Add input Widget
          InputField(label: "username"),
          // SizedBox(
          //   height: 10.0,
          // ),
          InputField(label: "password", obscureText: true),
          // SizedBox(
          //   height: 10.0,
          // ),
          InputField(label: "confirm password", obscureText: true),

          // SizedBox(
          //   height: 10.0,
          // ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
            child: MaterialButton(
                onPressed: () {},
                height: 50.0,
                minWidth: double.infinity,
                color: Color.fromARGB(255, 1, 89, 160),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Sign up ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                )),
          ),
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Login Here",
                style: TextStyle(color: Colors.blue),
              )),
        ],
      ),
    );
  }
}

Widget InputField({label, obscureText = false}) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
      ),
      SizedBox(
        width: 350.0,
        height: 35.0,
        child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9))),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            )),
      ),
    ],
  );
}
