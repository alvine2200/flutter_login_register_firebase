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
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                height: 250.0,
                width: 250.0,
                alignment: Alignment.center,
                // fit: BoxFit.contain,
                image: AssetImage(tWelcomeImage),
              ),
              const Column(
                children: [
                  Text(
                    tWelcomeTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                  SizedBox(
                    height: 17.0,
                  ),
                  Text(
                    tSubTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 19.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      debugPrint('Hello There');
                    },
                    child: const Text(tLoginText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Hello two');
                    },
                    child: const Text(tRegisterText),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
