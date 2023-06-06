

import 'package:flutter/material.dart';
import 'package:jarvix_application_1/screens/login_screen_1.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:  ColorScheme.fromSwatch().copyWith(
          primary:  Colors.black,
        ),
      ),
      home:const LoginScreen1(),
    );
  }
}
