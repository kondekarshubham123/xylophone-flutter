import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  Expanded BuildExpView({colorbg,int ton}){
    return Expanded(child: FlatButton(child: Container(color: colorbg,),onPressed:(){
              final player = AudioCache();
              player.play("note$ton.wav");
            }));
    }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildExpView(colorbg:Colors.red,ton: 1),
              BuildExpView(colorbg:Colors.orange,ton: 2),
              BuildExpView(colorbg:Colors.yellow,ton: 3),
              BuildExpView(colorbg:Colors.green,ton: 4),
              BuildExpView(colorbg:Colors.blue,ton: 5),
              BuildExpView(colorbg:Colors.indigo,ton: 6),
              BuildExpView(colorbg:Colors.purple,ton: 7),
            ],
          ),
        ),
      ),
    );
  }
}
