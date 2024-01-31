// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do/language.dart';
import 'package:to_do/login.dart';
import 'package:to_do/personality.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.countryName),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 4,
                ),
                Text("Your setting so that we are comfortable"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Personality(),
                        ));
                  },
                  title: Center(child: Text('Personality')),
                  trailing: Icon(Icons.arrow_forward_ios),
                  iconColor: Colors.white,
                  tileColor: Colors.greenAccent.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Language(),
                        ));
                  },
                  title: Center(child: Text('Language')),
                  trailing: Icon(Icons.arrow_forward_ios),
                  iconColor: Colors.white,
                  tileColor: Colors.blueAccent.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Setting(),
                        ));
                  },
                  title: Center(
                      child: Text(
                    'Terms and Condition',
                  )),
                  trailing: Icon(Icons.arrow_forward_ios),
                  iconColor: Colors.white,
                  tileColor: Colors.pinkAccent.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogIn(),
                        ));
                  },
                  leading: Icon(Icons.login_outlined),
                  title: Center(child: Text('Log-Out')),
                  trailing: Icon(Icons.arrow_forward_ios),
                  iconColor: Colors.black45,
                  tileColor: Colors.red.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
