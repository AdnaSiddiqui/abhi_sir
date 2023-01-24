import 'package:flutter/material.dart';
import 'package:trial_less/button.dart';
import 'package:trial_less/button2.dart';

void main(){
  runApp(YourApp());
}

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Adnan",
      home: Myhome() ,
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  double changeslidervalue = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('adnanfull',
        style: TextStyle(color: Colors.deepOrange),),

        leading: Icon(Icons.account_balance_outlined,
        color: Colors.deepOrange,),
       // leading: Icon(Icons.account_box),

        actions:  [
          Icon(Icons.search,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_rounded),
          ),
        ],
        actionsIconTheme: IconThemeData(color: Colors.deepOrange),
      ),

      //drawer: Drawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ADbutton(btntext: "btntext"),
                ADbutton(btntext: "btntext"),
                ADbutton(btntext: "btntext"),
              ],
            ),
            Slider(
              value: changeslidervalue,
              onChanged: (value) {
                setState(() {
                  changeslidervalue = value;
                });
              },
              max: 100,
              min: 0,
            ),



      Switch(
        activeColor: Colors.black,
        activeTrackColor: Colors.white,
        onChanged: (isEnabled) {},
        value: false,
      ),


            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                  hintText: "Write Here",
                  suffix: IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () {},
                  ),
              ),
            ),

        Container(child: Image.asset('myimages/abc.jpg',
              fit: BoxFit.contain,
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () { print('adn'); },
              child: Text('Adnan Ka button ')),
            ),

            ADbutton(btntext: 'My button '), // ADbutton
            Stdbtn(btnnext: 'Mynew bon'), //Stdbtn

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  child: Text('Eleved BTN'),
                onPressed: (){
                    print('pressed');
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
