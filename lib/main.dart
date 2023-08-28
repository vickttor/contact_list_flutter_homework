import 'package:contacts/constants.dart';
import 'package:contacts/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

///
/// AUTHOR: Victor Hugo da Silva
/// RA: 1431432312001
/// Github: https://github.com/vickttorugo
/// LinkedIn: https://www.linkedin.com/in/victorsilvadev/
///
/// App Description: Contact List - User Interface

Future main() async {
  // Preserving the Splash Screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Load Resources
  await Future.delayed(const Duration(seconds: 3));

  // Removing the Splash screen and showing the App
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(primaryColor)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
