//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  playSound(int x){
    final player = AudioPlayer();
    player.play(AssetSource('note${x}.wav'));
  }


  Container myFunction(var y){
    return Container(
      padding: EdgeInsets.zero,
    //  width: double.infinity,
      height: 70,
      color: y,
    );
  }


  Expanded newFunction(int i,var j){
    return Expanded(
        child: Expanded(
          child: TextButton(
            onPressed: (){
              playSound(i);
            },
            child:myFunction(j),
          ),
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                newFunction(1,Colors.red),
                newFunction(2,Colors.green),
                newFunction(3,Colors.teal),
                newFunction(3,Colors.orange),
                newFunction(3,Colors.pink),
                newFunction(3,Colors.yellow),
                newFunction(3,Colors.grey),


              ],
            )
        ),
      ),
    );
  }
}
