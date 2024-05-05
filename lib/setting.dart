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
            const Row(
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
            const Row(
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
                          builder: (context) => const Personality(),
                        ));
                  },
                  title: const Center(child: Text('Personality')),
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                          builder: (context) => const Language(),
                        ));
                  },
                  title: const Center(child: Text('Language')),
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                          builder: (context) => const Setting(),
                        ));
                  },
                  title: const Center(
                      child: Text(
                    'Terms and Condition',
                  )),
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                          builder: (context) => const LogIn(),
                        ));
                  },
                  title: const Center(child: Text('Log-Out')),
                  trailing: const Icon(Icons.login_outlined),
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
