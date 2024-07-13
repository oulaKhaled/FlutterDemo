import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool showPassword = false;
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
          ],
        ),
        body: ListView(children: [buildTop(), buildContent()]));
  }
}

Widget buildTop() => Container(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
          CoverImage(image: "assets/cover1.jpg"),
          Positioned(
            top: 160,
            child: ProfileImage(image: "assets/noimage.jpg"),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      ),
    );
Widget CoverImage({image}) {
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )),
  );
}

Widget ProfileImage({image}) {
  // return ListView(children: [
  return Container(
    width: 170,
    height: 170,
    decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
  );
}

Widget buildContent() => Container(
      padding: EdgeInsets.fromLTRB(30, 100, 30, 30),
      child: Column(
        children: <Widget>[
          Text("James Summer",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900)),
          SizedBox(
            width: 20.0,
          ),
          Text("Software Developer",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600])),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
              height: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    name: FontAwesomeIcons.instagram,
                  ),
                  SocialIcon(
                    name: FontAwesomeIcons.facebook,
                  ),
                  SocialIcon(
                    name: FontAwesomeIcons.github,
                  ),
                  SocialIcon(
                    name: FontAwesomeIcons.linkedin,
                  )
                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildButton(text: "Followers", value: "90"),
              buildButton(text: "Following", value: "120"),
              buildButton(text: "Post", value: "50"),
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("About",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black)),
              Text(
                  "I’m a Junior Software Developer with a strong foundation in programming and a passion for creating innovative solutions. Proficient in [list your main programming languages, e.g., JavaScript, Python, Java], and experienced with [mention any relevant frameworks or tools, e.g., React, Node.js, Django]. I enjoy tackling challenging problems, learning new technologies, and contributing to collaborative projects")
            ],
          )
        ],
      ),
    );

Widget buildButton({text, value}) {
  return MaterialButton(
    onPressed: () {},
    child: Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.0),
        ),
        Text(
          value,
          style: TextStyle(color: Colors.grey[700]),
        )
      ],
    ),
  );
}

Widget SocialIcon({name}) {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 20.0,
      ),
      IconButton(
          icon: Icon(
            name,
            size: 40,
            color: Colors.blue[900],
          ),
          onPressed: () {}),
    ],
  );
}
