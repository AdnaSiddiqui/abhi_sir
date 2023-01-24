import 'package:flutter/material.dart';

class ADbutton extends StatelessWidget {
  final String btntext;

  const ADbutton({Key? key, required this.btntext});
  
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {

    }, child: Text(btntext));
  }
}
