import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CherryPickPage extends StatefulWidget {
  _CherryPickState state = _CherryPickState();

  @override
  State<StatefulWidget> createState() {
    return state;
  }
}

class _CherryPickState extends State {
  String _output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations
            .of(context)
            .cherryPicker),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter 'git log --oneline' from base branch"),
                    scrollPadding: EdgeInsets.all(10),
                    keyboardType: TextInputType.multiline,
                    maxLines: 1000,
                    textAlign: TextAlign.justify,
                  ))),
          SizedBox.fromSize(
            child: ElevatedButton(onPressed: () {
              setState(() {
                _output = "something";
              });
            }, child: Text("Parse")),
            size: Size(double.infinity, 50),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: SizedBox.fromSize(
                child: Text(
                  "Output:",
                  maxLines: 100,
                  textAlign: TextAlign.start,
                ),
                size: Size(double.infinity, 50),
              ))
        ],
      ),
    );
  }
}
