import 'package:flutter/material.dart';
import 'package:flutter_example/API/user_get_data.dart';

class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  String output = "No Data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Get Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(output),
            RaisedButton(
              onPressed: () {
                User.getUser("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++)
                    output = output + "[" + users[i].name + "]";
                  setState(() {});
                });
              },
              child: Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}
