import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text("Jangan Lupa Makan Kesehatanmu Nomor 1"));

void nextPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Center(
        child: Text("Welcome to next page"),
      ),
    );
  }));
}

class AppBarMod extends StatelessWidget {
  AppBarMod({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("AppBar Mod"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: "allert",
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: "Next Page",
              onPressed: () {
                nextPage(context);
              })
        ],
      ),
      body: Center(child: Text("Welcome To AppBar Module"),),
    );
  }
}
