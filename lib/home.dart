// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:to_do/personality.dart';
import 'package:to_do/setting.dart';
import 'package:to_do/sub_work.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage('image/shakil.jpg'),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Shakil",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        Text(
          "Chowdhury",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        SizedBox(
          height: 8,
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
              leading: Icon(Icons.group),
              title: Text('Personality'),
              trailing: Icon(Icons.arrow_forward_ios),
              iconColor: Colors.white,
              tileColor: Colors.orange.shade700,
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
                      builder: (context) => SubWork(),
                    ));
              },
              leading: Icon(Icons.work_outlined),
              title: Text("Work ToDay's"),
              trailing: Icon(Icons.arrow_forward_ios),
              iconColor: Colors.white,
              tileColor: Colors.deepPurple.shade600,
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
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              trailing: Icon(Icons.arrow_forward_ios),
              iconColor: Colors.white,
              tileColor: Colors.blueAccent.shade700,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
      ]),
    );
  }
}
