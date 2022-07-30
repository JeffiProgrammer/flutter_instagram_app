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
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/switch_account_background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 150.0,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        width: 300,
                        height: 280,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Image(image: AssetImage("images/profile.png")),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              "Masoud Ranjbaran",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            SizedBox(
                              height: 36,
                              width: 109,
                              child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {},
                                child: Text("Confirm"),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Switch Account",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.0, bottom: 33.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account? / ',
                  style: TextStyle(
                      fontFamily: "GB",
                      color: Colors.grey[700],
                      fontSize: 16.0),
                ),
                Text(
                  "sign up",
                  style: TextStyle(
                      fontFamily: "GB", color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
