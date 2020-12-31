import 'package:flutter/material.dart';

class ClipRectMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
              child: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hero Animation",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SecPage();
          }));
        },
        child: Hero(
          tag: "Rendi",
                  child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
                width: 100,
                height: 100,
                child: FittedBox(
                  child: Image.asset(
                    "images/me.jpeg",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class SecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hero Animation",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: "Rendi",
                      child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                  width: 200,
                  height: 200,
                  child: FittedBox(
                    child: Image.asset(
                      "images/me.jpeg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
