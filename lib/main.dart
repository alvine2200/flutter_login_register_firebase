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
            image: AssetImage("assets/images/welcome_page_img/download.jpeg"),
          ),
          const Column(
            children: [
              Text(tWelcomeTitle),
              Text(tSubTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(tLoginText),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(tRegisterText),
              )
            ],
          )
        ],
      ),
    );
  }
}
