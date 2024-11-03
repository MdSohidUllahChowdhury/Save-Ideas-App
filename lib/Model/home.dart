import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Setting Option/personality.dart';
import 'package:to_do/View/Setting Option/setting.dart';
import 'package:to_do/View/Save Work/notescreen.dart';
import 'package:to_do/Widgets/listcard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 13,vertical:90),
        decoration: BoxDecoration(
          color: Color(0xffFDDBBB),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('lib/Controller/Assets/image/shakil.jpg'),
          ),
          const SizedBox(height: 8),
          const Text(
            "Shakil\nChowdhury",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 1.2, fontWeight: FontWeight.w800, fontSize: 20),
          ),
          const SizedBox(height: 8),
          ListCard(
              addIconOne: const Icon(Icons.person_3_outlined),
              titlename: const Text('Profile'),
              ontap: () => Get.to(()=>const Personality()),
              colors: Colors.orangeAccent.shade400),
          ListCard(
            addIconOne: const Icon(Icons.document_scanner),
            titlename: const Text('Your Note'),
            ontap: () => Get.to(()=>const NotePage()),
            colors: Colors.deepPurpleAccent.shade400,
          ),
          ListCard(
            addIconOne: const Icon(Icons.settings_applications_sharp),
            titlename: const Text('Setting'),
            ontap: () => Get.to(()=>const Setting()),
            colors: Colors.blueAccent.shade400,
          ),
        ]),
      ),
    );
  }
}
