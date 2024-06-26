import 'package:flutter/material.dart';
import 'package:to_do/View/Setting Option/personality.dart';
import 'package:to_do/View/Setting Option/setting.dart';
import 'package:to_do/View/Save Work/work_add.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 100,
            width: 100,
            child: const CircleAvatar(
              backgroundImage: AssetImage('lib/Controller/Assets/image/shakil.jpg'),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Shakil",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        const Text(
          "Chowdhury",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        const SizedBox(
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
                      builder: (context) => const Personality(),
                    ));
              },
              leading: const Icon(Icons.group),
              title: const Text('Personality'),
              trailing: const Icon(Icons.arrow_forward_ios),
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
                      builder: (context) => const SubWork(),
                    ));
              },
              leading: const Icon(Icons.work_outlined),
              title: const Text("Work ToDay's"),
              trailing: const Icon(Icons.arrow_forward_ios),
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
                      builder: (context) => const Setting(),
                    ));
              },
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              trailing: const Icon(Icons.arrow_forward_ios),
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
