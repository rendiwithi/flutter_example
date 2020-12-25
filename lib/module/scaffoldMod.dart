import 'package:flutter/material.dart';

class ScaffoldMod extends StatefulWidget {
  @override
  _ScaffoldModState createState() => _ScaffoldModState();
}

class _ScaffoldModState extends State<ScaffoldMod> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Module"),
      ),
      body: Center(
        child: Text("Tombol + di tekan sebanyak $_count kali"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
        color: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState((){
          _count++;
        }),
        tooltip: 'Tombol Tambah',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
