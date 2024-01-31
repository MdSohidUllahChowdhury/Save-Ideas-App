// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:to_do/home.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color.fromARGB(255, 246, 240, 240),
        elevation: 0,
        title: Text('Personality',style: TextStyle(color: Colors.black),),
      ),

    body: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [SizedBox(height: 30,),
        Center(
          child: Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage('image/shakil.jpg'),
            ),
          ),
        ),
        SizedBox(height:4),
        Text('Edit Profile',
        style: TextStyle(color: Colors.orangeAccent),),
        
       Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ), 
        
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "Frist Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),        
             
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "E-Mail",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: "PassWord",
                    
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    
                    decoration: InputDecoration(
                    labelText: "Country",
                    
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                },
                child:Text('Save Change'),
                style: TextButton.styleFrom(
                minimumSize: Size(270, 40),
                 ),
                 )
      ],
    ),

);
}
}