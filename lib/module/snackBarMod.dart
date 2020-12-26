import 'package:flutter/material.dart';

class SnackBarMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Module"),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              children: [
                FlatButton(
                  child: Text(
                    "Choose me",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Not Me!"),
                    ));
                  },
                  color: Colors.blue,
                ),
                FlatButton(
                  child: Text(
                    "Choose me",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Cool"),
                    ));
                  },
                  color: Colors.blue,
                ),
                FlatButton(
                  child: Text(
                    "Choose me",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Warm"),
                    ));
                  },
                  color: Colors.blue,
                ),
                FlatButton(
                  child: Text(
                    "Choose me",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red,),
                          Text("I LOVE YOU"),
                        ],
                      ),
                      backgroundColor: Colors.deepOrange[200],
                    ));
                  },
                  color: Colors.blue,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
