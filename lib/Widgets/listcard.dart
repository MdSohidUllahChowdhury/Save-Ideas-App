import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final Icon? addIconOne;
  final Widget titlename;
  final void Function()? ontap;
  final Color colors;
  
  const ListCard({super.key,
  
  this.addIconOne,
  required this.titlename, 
  this.ontap, 
  required this.colors});

  @override
  Widget build(BuildContext context) {
    return Card(
     elevation: 10,
     shadowColor:Colors.black,
     margin:const EdgeInsets.symmetric(horizontal:10,vertical:8),
     child: ListTile(
       onTap:ontap,
       leading: addIconOne,
       title: titlename,
       trailing: const Icon(Icons.arrow_forward_ios,size: 12,),
       iconColor: Colors.white,
       tileColor: colors,
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15)
           ),
      ),
    );
  }
}