import 'package:flutter/material.dart';

class TabBarMod extends StatelessWidget {
  TabBar _myTabBar = TabBar(
    // indicatorColor: Colors.red,
    indicator: BoxDecoration(
      color: Colors.red,
      border: Border(
        top: BorderSide(color: Colors.green, width: 5),
      ),
    ),
    tabs: [
      Tab(
        icon: Icon(Icons.comment),
        text: "Comments",
      ),
      Tab(
        child: Image.asset("images/me.jpeg"),
      ),
      Tab(icon: Icon(Icons.comment)),
      Tab(
        text: "UwU",
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Tap Bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(_myTabBar.preferredSize.height),
                child: Container(color: Colors.amber, child: _myTabBar))),
        body: TabBarView(children: [
          Center(
            child: Text("Uwu1"),
          ),
          Center(
            child: Text("Uwu2"),
          ),
          Center(
            child: Text("Uwu3"),
          ),
          Center(
            child: Text("Uwu4"),
          ),
        ]),
      ),
    );
  }
}
