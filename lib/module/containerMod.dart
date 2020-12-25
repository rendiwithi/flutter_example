import 'package:flutter/material.dart';

class ContainerMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Mod"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                height: 96.0,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    "Container",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                child: Text(
                  "Container Miring",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.white),
                ),
                transform: Matrix4.skewY(0.2),
              ),
              SizedBox(
                height: 48.0,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.display1.fontSize * 1.0 +
                      50.0,
                ),
                padding: EdgeInsets.all(8.0),
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                child: Text(
                  "Contaienr Miring Yang Denial",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                transform: Matrix4.rotationZ(0.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
