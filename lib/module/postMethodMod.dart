import 'package:flutter/material.dart';
import 'package:flutter_example/API/post_result_model.dart';

class PostMethodMod extends StatefulWidget {
  @override
  _PostMethodModState createState() => _PostMethodModState();
}

class _PostMethodModState extends State<PostMethodMod> {
  PostResult postResult = null;

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
            Text((postResult != null)
                ? postResult.id +
                    "|" +
                    postResult.name +
                    "|" +
                    postResult.job +
                    "|" +
                    postResult.created
                : "Data Tidak Ditemukan"),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("Rendi", "Flutter Developer")
                    .then((value) {
                  postResult = value;
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
