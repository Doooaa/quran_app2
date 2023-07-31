import 'screens/subscribes.dart';
import 'screens/home_screen.dart';
import 'screens/start_screen.dart';
import 'screens/Pupular Show.dart';
import 'screens/playNow_screen.dart';
import 'package:flutter/material.dart';







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
     //    canvasColor:Color.fromRGBO(132, 120, 246, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(132, 120, 246, 1)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => Start_Screen(),
        '/home':(context) =>Home(),
        '/PupularShow':(context) =>PupularShow_Screen(),
          '/Subscribe':(context) =>  Subscribe(),
          '/playnow':(context) =>  Play_Now(),
      },
     // home:Start_Screen(),
    );
  }
}





