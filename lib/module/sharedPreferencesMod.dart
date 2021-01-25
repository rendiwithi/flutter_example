// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesMod extends StatefulWidget {
//   @override
//   _SharedPreferencesModState createState() => _SharedPreferencesModState();
// }

// class _SharedPreferencesModState extends State<SharedPreferencesMod> {
//   TextEditingController controller = TextEditingController(text: "No Name");
//   bool isOn = false;
//   void saveData() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setString("nama", controller.text);
//     pref.setBool("ison", isOn);
//   }

//   Future<String> getNama() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getString("nama") ?? "No Name";
//   }

//   Future<bool> getOn() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getBool("ison") ?? false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Shared Preferences"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             TextField(
//               controller: controller,
//             ),
//             Switch(
//                 value: isOn,
//                 onChanged: (newValue) {
//                   isOn = newValue;
//                   setState(() {});
//                 }),
//             RaisedButton(
//                 child: Text("Save"),
//                 onPressed: () {
//                   saveData();
//                 }),
//             RaisedButton(
//                 child: Text("Load"),
//                 onPressed: () {
//                   getNama().then((name) {
//                     controller.text = name;
//                     setState(() {});
//                     getOn().then((b) {
//                       isOn = b;
//                       setState(() {});
//                     });
//                   });
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
