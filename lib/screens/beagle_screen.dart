import 'package:flutter/material.dart';

class BeagleScreen extends StatefulWidget {
  @override
  _BeagleScreenState createState() => _BeagleScreenState();
}

class _BeagleScreenState extends State<BeagleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beagle'),
      ),
      body: Container(
        child: Image(
          image: AssetImage("assets/images/beagle-hunderasse-760x560.jpg"),
        ),
      ),
    );
  }
}
