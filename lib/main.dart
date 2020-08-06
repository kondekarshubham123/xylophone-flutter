import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: FlatButton(child: Container(color: Colors.red,),onPressed:(){
                  final player = AudioCache();
                  player.play("note1.wav");
                })),
                Expanded(child: FlatButton(child: Container(color: Colors.orange,),onPressed:() {
                  final player = AudioCache();
                  player.play("note2.wav");
                  },)),
                Expanded(child: FlatButton(child: Container(color: Colors.yellow,),onPressed:() {                  
                  final player = AudioCache();
                  player.play("note3.wav");},)),
                Expanded(child: FlatButton(child: Container(color: Colors.green,),onPressed:()  {
                  final player = AudioCache();
                  player.play("note4.wav");
                },)),
                Expanded(child: FlatButton(child: Container(color: Colors.blue,),onPressed:()   {
                  final player = AudioCache();
                  player.play("note5.wav");
                },)),
                Expanded(child: FlatButton(child: Container(color: Colors.indigo,),onPressed:() {
                  final player = AudioCache();
                  player.play("note6.wav");
                },)),
                Expanded(child: FlatButton(child: Container(color: Colors.purple,),onPressed:() {
                  final player = AudioCache();
                  player.play("note7.wav");
                },)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
