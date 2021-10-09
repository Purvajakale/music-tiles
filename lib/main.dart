import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // void playSound(int soundNumber){
  //   player.play('note$soundNumber.wav');
  // }
  final player = AudioCache();

  Expanded musicTile({Color color, int sound}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          player.play('note$sound.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                musicTile(color: Colors.deepOrange, sound: 1),
                musicTile(color: Colors.red, sound: 2),
                musicTile(color: Colors.yellow, sound: 3),
                musicTile(color: Colors.green, sound: 4),
                musicTile(color: Colors.blue, sound: 5),
                musicTile(color: Colors.purple, sound: 6),
                musicTile(color: Colors.blue.shade100, sound: 7),
              ],
            ),
        ),
        )
    );
  }
}

// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber) {
//     final player = AudioCache();
//     player.play('note$soundNumber.wav');
//   }
//
//   Expanded buildKey({Color color, int soundNumber}) {
//     return Expanded(
//       child: FlatButton(
//         color: color,
//         onPressed: () {
//           playSound(soundNumber);
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 buildKey(color: Colors.red, soundNumber: 1),
//                 buildKey(color: Colors.blueGrey, soundNumber: 2),
//                 buildKey(color: Colors.pinkAccent, soundNumber: 3),
//                 buildKey(color: Colors.yellow, soundNumber: 4),
//                 buildKey(color: Colors.lightBlue, soundNumber: 5),
//                 buildKey(color: Colors.deepPurple, soundNumber: 6),
//                 buildKey(color: Colors.deepOrangeAccent, soundNumber: 7),
//               ],
//           ),
//         ),
//       ),
//     );
//   }
// }
