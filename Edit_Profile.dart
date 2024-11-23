import 'package:flutter/material.dart';
import 'package:project/Account&Setting.dart';
import 'package:project/profile.dart';

class EditprofileScrean extends StatefulWidget {
  const EditprofileScrean({super.key});

  @override
  State<EditprofileScrean> createState() => _EditprofileScreanState();
}

class _EditprofileScreanState extends State<EditprofileScrean> {
  bool swetchedd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: CircleAvatar(
              maxRadius: 35,
              backgroundImage: AssetImage("Assets/abdoo.jpg"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Hey,",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Abdo Amr",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ));
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => s1(),
                        ));
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => s1(),
                          ));
                    },
                    child: Text(
                      "Account&Setting",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  "Dark Mode",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Switch(
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  value: swetchedd,
                  onChanged: (value) {
                    setState(() {
                      swetchedd = value;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "-------------------------------------",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
