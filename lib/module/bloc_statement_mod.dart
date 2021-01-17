import 'package:flutter/material.dart';

class BlocStatementMod extends StatefulWidget {
  @override
  _BlocStatementModState createState() => _BlocStatementModState();
}

class _BlocStatementModState extends State<BlocStatementMod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc Biasa"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: 100,
          height: 100,
          color: Colors.amber
        ),
      ),
    );
  }
}
