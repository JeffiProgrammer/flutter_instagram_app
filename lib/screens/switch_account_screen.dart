import 'package:flutter/material.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/switch_account_background.png"),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
            child: Text("don't have an account?",
                style: TextStyle(fontSize: 20.0, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
