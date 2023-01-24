import 'package:flutter/material.dart';

class Stdbtn extends StatelessWidget{

  final String btnnext;

  const Stdbtn({super.key, required this.btnnext});
  @override
  Widget build(BuildContext context) {
   return TextButton(onPressed: (){

   },
       child: Text ('btnnext'));
  }
}