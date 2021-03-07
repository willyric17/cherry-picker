import 'package:flutter/material.dart';
import 'package:flutter_app/HowToPage.dart';
import 'package:flutter_app/MainMenuPage.dart';
import 'package:flutter_app/cherrypick/CherryPickPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale("en", ""),
        const Locale("id", "")
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainMenuPage(),
      routes: <String, WidgetBuilder>{
        '/howto': (BuildContext context) => HowToPage(),
        '/cherrypick': (BuildContext context) => CherryPickPage()
      },
    );
  }
}
