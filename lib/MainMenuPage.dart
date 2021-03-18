import 'dart:ui';

import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    final List<Pair<String, String>> items = <Pair<String, String>>[
      Pair(localization.cherryPicker, "/cherrypick"),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).mainMenu)),
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(16),
          child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                var colorIndex = min(index + 1, 9) * 100;
                var background = Colors.red[colorIndex];
                var foreground = background.computeLuminance() > 0.4
                    ? Colors.grey[800]
                    : Colors.grey[50];
                return ListTile(
                    tileColor: background,
                    onTap: () {
                      Navigator.pushNamed(context, items[index].last);
                    },
                    title: Center(
                        child: Text(
                      "${items[index].first}",
                      style: TextStyle(color: foreground),
                    )));
              }),
        ),
      ),
    );
  }
}
