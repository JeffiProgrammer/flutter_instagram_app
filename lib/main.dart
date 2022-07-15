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
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Center(
                  child: Image(
                    image: AssetImage("images/logo_splash.png"),
                  ),
                ),
              ),
              Positioned(
                bottom: 32,
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Jeffi Programmer (Github)",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
