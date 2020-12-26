import 'package:flutter/material.dart';

class TextMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Mod")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Simple Text"),
              Text(
                "ini adalah text yang akan di potong karena terlalu panjang dan tidak di atur",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "Shadow Text",
                style: TextStyle(color: Colors.green, fontSize: 24.0, shadows: [
                  Shadow(color: Colors.amber, offset: Offset(2, 4)),
                ]),
              ),
              Text.rich(TextSpan(text: "Hi i am", children: [
                TextSpan(
                    text: " Italic",
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: " Bold",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " Normal",
                    style: TextStyle(fontWeight: FontWeight.normal)),
              ])),
              RichText(
                  softWrap: true,
                  text: TextSpan(
                      text: "I Am",
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                            text: " Rich Text",
                            style:
                                TextStyle(color: Colors.green, fontSize: 24.0)),
                        TextSpan(
                            text: " similiar to",
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: " Text.rich",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
