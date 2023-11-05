import 'package:flutter/material.dart';

void main() {
  runApp(zingo());
}

class zingo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Custom Widgets",
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widgets"),
      ),
      body: Column(
        children: [
          myElevatedButton(btmName: 'Login'),
          SizedBox(height: 11),
          myElevatedButton(btmName: "Play"),
          SizedBox(height: 11),
          myElevatedButton(btmName: "Start"),
        ],
      ),
    );
  }

  Widget myElevatedButton({required String btmName}) {
    return ElevatedButton(
        onPressed: () {},
        child: Text("btmName"),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            minimumSize: Size(200, 50)));
  }
}
//