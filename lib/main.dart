import 'package:flutter/material.dart';
//import 'pages/Home.dart'; // Import your Home.dart file
import 'src/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bAInellm', // Replace 'Your App Name' with your app's name
      theme: ThemeData(
        primarySwatch: Colors.purple, // Adjust the primary color as needed
        appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Define toolbar text style
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Define title text style
        ),
      ),
      home: const ChatScreen(), // Use SplashScreen as the initial route
    );
  }
}




