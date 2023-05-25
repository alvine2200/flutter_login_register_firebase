import 'package:flutter/material.dart';
import 'package:login_register_firebase/src/constants/strings/strings.dart';
import 'package:login_register_firebase/src/utils/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(
            width: 150.0,
            height: 150.0,
            image: AssetImage("assets/images/BigPen.jpeg"),
          ),
          const Column(
            children: [
              Text(
                tWelcomeTitle,
                style: TextStyle(color: Colors.black54, fontSize: 24.0),
              ),
              Text(
                tSubTitle,
                style: TextStyle(color: Colors.black45, fontSize: 15.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text(tLoginText),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(tRegisterText),
              ),
            ],
          )
        ],
      ),
    );
  }
}
