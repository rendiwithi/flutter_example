// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class AudioPlayersMod extends StatefulWidget {
//   @override
//   _AudioPlayersModState createState() => _AudioPlayersModState();
// }

// class _AudioPlayersModState extends State<AudioPlayersMod> {
//   AudioPlayer audioPlayer;
//   String durasi = "00:00:00";
//   _AudioPlayersModState() {
//     audioPlayer = AudioPlayer();
//     audioPlayer.onAudioPositionChanged.listen((event) {
//       setState(() {
//         durasi = event.toString();
//       });
//     });
//     audioPlayer.setReleaseMode(ReleaseMode.RELEASE);
//   }

//   void playSound(String url) async {
//     await audioPlayer.play(url);
//   }

//   void pauseSound() {
//     audioPlayer.pause();
//   }

//   void stopSound() {
//     audioPlayer.stop();
//   }

//   void resumeSound() {
//     audioPlayer.resume();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Audio Players"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             RaisedButton(
//               onPressed: () {
//                 playSound(
//                     "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3");
//               },
//               child: Text("Play"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 pauseSound();
//               },
//               child: Text("Pause"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 stopSound();
//               },
//               child: Text("Stop"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 resumeSound();
//               },
//               child: Text("Resume"),
//             ),
//             Text(
//               durasi,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
