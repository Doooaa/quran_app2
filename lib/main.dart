import 'screens/subscribes.dart';
import 'screens/home_screen.dart';
import 'screens/start_screen.dart';
import 'screens/Pupular Show.dart';
import 'screens/playNow_screen.dart';
import 'package:flutter/material.dart';
import 'package:quran_app2/components/apploacal.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() {
  runApp(const MyApp());
}

 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      locale: Locale(lang),
        localizationsDelegates: [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate
          ,GlobalWidgetsLocalizations.delegate,
        ],
supportedLocales: [
  Locale('en',""),
  Locale('ar',"")
],
 
localeListResolutionCallback: (current_lang, supported_lang) {
  if(current_lang!=null)
  {
    if(lang=="en") return   supported_lang.first;
    else  return   supported_lang.last;
  }
  return supported_lang.first;
},

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     //    canvasColor:Color.fromRGBO(132, 120, 246, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(132, 120, 246, 1)),
        fontFamily: 'REM',
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


 String lang="en";


