// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:to_do/View/home.dart';
import 'package:to_do/View/Save Work/work_add.dart';

class SubWorkTwo extends StatelessWidget {
  const SubWorkTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hoverColor: Colors.black45,
                labelText: "Title",
                //border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.title_sharp),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(2, 20, 2, 200),
                hoverColor: Colors.black45,
                labelText: 'Description',
                hintMaxLines: 50,

                //border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
