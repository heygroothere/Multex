import 'package:flutter/material.dart';
import 'package:multex/screens/StartScreen.dart';
import 'package:multex/screens/LogIn_Page.dart';
import 'package:multex/screens/HomeScreen.dart';
import 'package:multex/screens/SignupScreen.dart';
import 'package:multex/screens/searches.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/second': (context) => LogInScreen(),
        '/third': (context) => SignUpScreen(),
        '/fourth': (context) => HomeScreen(),
        '/fifth': (context) => Searches(),
        // '/sixth': (context) => Hotel(),
      },
    );
  }
}
