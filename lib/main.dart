import 'package:flutter/material.dart';
import 'package:responsive/screens/screens.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const ScrollBehavior(
      // ignore: deprecated_member_use
      androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, child!),
      maxWidth: 2460,
      minWidth: 450,
      defaultScale: true,
      breakpoints: [
      const ResponsiveBreakpoint.resize(450, name: MOBILE),
      const ResponsiveBreakpoint.autoScale(600, name: TABLET),
      const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      title: 'Gerick Matibag Exam',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PageDesignPage(),
    );
  }
}

