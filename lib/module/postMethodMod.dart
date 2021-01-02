import 'package:flutter/material.dart';

class PostMethodMod extends StatefulWidget {
  @override
  _PostMethodModState createState() => _PostMethodModState();
}

class _PostMethodModState extends State<PostMethodMod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hasil API"),
            RaisedButton(
              onPressed: () {},
              child: Text("Post"),
            )
          ],
        ),
      ),
    );
  }
}
