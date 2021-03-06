import 'dart:ui';

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
              child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/switch_account_background.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Positioned(
                top: 170,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                    child: Container(
                      width: 270,
                      height: 289,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(children: [
                        SizedBox(height: 22),
                        Image(image: AssetImage("images/profile.png")),
                        SizedBox(height: 10),
                        Text("Jeffi Programmer",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xfff35383),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0))),
                        ),
                        SizedBox(height: 15),
                        Text("switch account",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ]),
                    ),
                  ),
                ),
              )
            ],
          )),
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
