import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline4:
              TextStyle(fontFamily: "GB", fontSize: 16.0, color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color(0xfff35383),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              textStyle: TextStyle(fontFamily: "GB", fontSize: 16.0)),
        ),
      ),
      home: SwitchAccountScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage("images/pattern1.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Center(
                child: Image(
                  image: AssetImage("images/logo_splash.png"),
                ),
              ),
            ),
            Positioned(
              bottom: 32.0,
              child: Column(
                children: [
                  Text(
                    "From",
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Text(
                    "JeffiProgrammer",
                    style: TextStyle(fontSize: 15.0, color: Colors.blueAccent),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
