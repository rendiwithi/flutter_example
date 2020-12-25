import 'package:flutter/material.dart';

class MaterialAppMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Material App Module"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("hai"),
        ),
      ),
    );
  }
}
