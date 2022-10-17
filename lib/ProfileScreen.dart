import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Profile"),
      OutlinedButton(
          onPressed: () {
            // Navigator.of(context).
            //push(MaterialPageRoute
            //(builder: (context) => SCREEN,))

            // Navigator.of(context).pop();
          },
          child: Text('Go to home'))
    ]);
  }
}
