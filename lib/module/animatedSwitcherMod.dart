import 'package:flutter/material.dart';

class AnimatedSwitcherMod extends StatefulWidget {
  @override
  _AnimatedSwitcherModState createState() => _AnimatedSwitcherModState();
}

class _AnimatedSwitcherModState extends State<AnimatedSwitcherMod> {
  Widget switchWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Switcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: switchWidget,
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,
              value: isOn,
              onChanged: (newValue) {
                isOn = newValue;
                setState(() {
                  if (isOn == true) {
                    switchWidget = Container(
                      key: ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    );

                    // switchWidget = SizedBox(
                    //   width: 200,
                    //   height: 100,
                    //   child: Center(
                    //     child: Text(
                    //       "Switch: On ",
                    //       style: TextStyle(
                    //         color: Colors.green,
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w700,
                    //       ),
                    //     ),
                    //   ),
                    // );
                  } else {
                    switchWidget = Container(
                      key: ValueKey(2),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    );
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
