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
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                // height: 250.0,
                width: 250.0,
                alignment: Alignment.center,
                fit: BoxFit.contain,
                image: const AssetImage(tWelcomeImage),
                height: height * 0.6,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        debugPrint('Hello There');
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: const Color.fromARGB(255, 30, 36, 39),
                        side: const BorderSide(color: Colors.black87),
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                      child: Text(tLoginText.toUpperCase()),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint('Hello two');
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 112, 110, 110),
                        foregroundColor:
                            const Color.fromARGB(255, 229, 234, 236),
                        side: const BorderSide(
                            color: Color.fromARGB(221, 14, 13, 13)),
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                      child: Text(tRegisterText.toUpperCase()),
                    ),
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
