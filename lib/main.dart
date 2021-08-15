import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Text Widget',
    theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("Multiple Text Widget"),),
      body: myApp(),
    ),
  )
  );
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      child: Text.rich(
         TextSpan(
           text: ' Hi ',// default text

           children: [
             TextSpan(
               text: 'this is me ',
               style: TextStyle(color: Colors.red,fontSize: 18)

             ),
             TextSpan(
                 text: ' Hard work can make your success',
                 style: TextStyle(color: Colors.greenAccent,fontSize: 18)

             )
             ]

         )
      )
      );
  }
}
