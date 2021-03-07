import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).mainMenu)),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/howto');
                      },
                      child: Text(
                        AppLocalizations.of(context).howTo,
                        textScaleFactor: 1.5,
                      ))),
              SizedBox(
                width: 0,
                height: 10,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cherrypick');
                      },
                      child: Text(
                        AppLocalizations.of(context).cherryPicker,
                        textScaleFactor: 1.5,
                      )))
            ]),
      ),
    );
  }
}
