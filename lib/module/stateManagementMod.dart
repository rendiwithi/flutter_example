import 'package:flutter/material.dart';
import 'package:flutter_example/class/application_colors.dart';
import 'package:provider/provider.dart';

class StateManagementMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColors>(
      create: (context) => ApplicationColors(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColors>(
            builder: (context, applicationColors, _) => Text(
              "State Management",
              style: TextStyle(
                color: applicationColors.color,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Consumer<ApplicationColors>(
                builder: (context, applicationColors, _) => AnimatedContainer(
                  height: 200,
                  width: 100,
                  color: applicationColors.color,
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer <ApplicationColors>(
                          builder: (context, applicationColors, _) => Text(
                                "AB",
                                style: TextStyle(color: applicationColors.color),
                              )),
                  Consumer<ApplicationColors>(
                      builder: (context, applicationColors, _) => Switch(
                          value: applicationColors.isLB,
                          activeColor: applicationColors.color,
                          activeTrackColor: applicationColors.trackColor,
                          inactiveThumbColor: applicationColors.color,
                          inactiveTrackColor: applicationColors.trackColor,
                          onChanged: (newValue) {
                            applicationColors.isLB = newValue;
                          })),
                  Consumer <ApplicationColors>(
                          builder: (context, applicationColors, _) => Text(
                                "LB",
                                style: TextStyle(color: applicationColors.color),
                              )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
