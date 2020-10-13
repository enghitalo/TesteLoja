import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Routes/Home_Route/Home_Route.dart';
// import 'Routes/Store_Route/';
import 'Routes/Home_Route/Store_Route/Store_Route.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFF303030),
        systemNavigationBarDividerColor: Color(0xFF303030),
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeRoute(title: 'Modelo'),
    );
  }
}
