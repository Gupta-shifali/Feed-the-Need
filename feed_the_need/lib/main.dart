import 'package:feed_the_need/Routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(Routes());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _userFunctionalButtons("Locate Fridge", () {
                Navigator.pushNamed(context, '/locateFridge');
              }),
              _userFunctionalButtons("Find Volunteer", () {
                Navigator.pushNamed(context, '/foodDesc');
              }),
              _userFunctionalButtons("Ready for Volunteering", () {
                Navigator.pushNamed(context, '/volunteerProfile');
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget _userFunctionalButtons(String label, Function onPress) => Container(
    margin: EdgeInsets.all(8.0),
        child: RaisedButton(
          child: Text(label),
          onPressed: onPress,
        ),
      );
}
