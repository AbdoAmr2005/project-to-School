import 'package:flutter/material.dart';
import 'package:project/Edit_Profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditprofileScrean(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditprofileScrean(),
                            ));
                      },
                      icon: Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.blue,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: AssetImage("Assets/abdoo.jpg"),
                  ),
                  Positioned(
                    right: 36,
                    top: 88,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.blue),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Abdo Amr",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Full Name",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 475,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(40)),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "Enter yout full name",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Email Address",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 475,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(40)),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    labelText: " Enter your Email Address",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 475,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(40)),
              child: TextField(
                obscureText: isObscured,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "Enter your Password",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: Icon(isObscured
                            ? Icons.visibility_off
                            : Icons.visibility))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
