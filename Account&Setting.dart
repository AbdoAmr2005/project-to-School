import 'package:flutter/material.dart';
import 'package:project/Edit_Profile.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  bool isSwitched = false;
  bool issSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: 110,
                    ),
                    Text(
                      "Account & Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 20),
                      border: Border(bottom: BorderSide(width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Notification Setting",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        SizedBox(
                          width: 230,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 20),
                      border: Border(bottom: BorderSide(width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_shipping_outlined,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Shipping Address",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        SizedBox(
                          width: 243,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 20),
                      border: Border(bottom: BorderSide(width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.payment,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Payment info",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        SizedBox(
                          width: 275,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 20, 20),
                      border: Border(bottom: BorderSide(width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Delete Account",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        SizedBox(
                          width: 260,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "App Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "Enable Push Notifications",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Switch(
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        })
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "Enable Location Services",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: 188,
                    ),
                    Switch(
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        value: issSwitched,
                        onChanged: (value) {
                          setState(() {
                            issSwitched = value;
                          });
                        })
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
