import 'package:flutter/material.dart';

class ButtonMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Module"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                "Flat Button",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                "Raised Button",
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.sms_failed,
                color: Colors.blue,
              ),
              onPressed: () {},
              tooltip: "Icon Button",
            ),
            Material(
              color: Colors.red,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              shape: CircleBorder(),
              fillColor: Colors.deepPurpleAccent,
              elevation: 2,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Icon(
                Icons.play_arrow,
                color: Colors.limeAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
