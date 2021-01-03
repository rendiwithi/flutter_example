import 'package:flutter/material.dart';
import 'package:flutter_example/API/post_result_model.dart';
import 'package:flutter_example/API/get_result_model.dart';

class PostMethodMod extends StatefulWidget {
  @override
  _PostMethodModState createState() => _PostMethodModState();
}

class _PostMethodModState extends State<PostMethodMod> {
  PostResult postResult = null;
  User user = null;
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
            Text("Your ID"),
            Text((postResult != null)
                ? postResult.id +
                    "|" +
                    postResult.name +
                    "|" +
                    postResult.job +
                    "|" +
                    postResult.created
                : "Data Tidak Ditemukan"),
            Text("Your Teacher ID"),
            Text((user != null)
                ? user.id + "|" + user.name
                : "Data Tidak  Ditemukan"),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("Rendi", "Flutter Developer")
                    .then((value) {
                  postResult = value;
                  setState(() {});
                });
                User.connectToApi("3").then((valueGet) {
                  user = valueGet;
                  setState(() {});
                });
              },
              child: Text("Post"),
            )
          ],
        ),
      ),
    );
  }
}
