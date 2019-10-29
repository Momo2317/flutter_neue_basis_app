import 'package:flutter/material.dart';
import 'package:flutter_neue_basis_app/screens/HavaneserScreen.dart';
import 'package:flutter_neue_basis_app/screens/beagle_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[Icon(Icons.pregnant_woman)],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            buildRaisedHunderasseButton(
                context, "Havaneser", HavaneserScreen()),
            buildRaisedHunderasseButton(context, "Beagle", BeagleScreen()),
          ],
        ),
      ),
    );
  }

  Widget buildRaisedHunderasseButton(BuildContext context, text, widget) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Text(text),
    );
  }
}
