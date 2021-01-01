import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class QrScanMod extends StatefulWidget {
  @override
  _QrScanModState createState() => _QrScanModState();
}

class _QrScanModState extends State<QrScanMod> {
  String text = "Press Scan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Scan")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
