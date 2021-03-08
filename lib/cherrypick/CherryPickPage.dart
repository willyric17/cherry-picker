import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/cherrypick/CherryPickPresenter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CherryPickPage extends StatefulWidget {
  final _CherryPickState state = _CherryPickState();

  @override
  State<StatefulWidget> createState() {
    return state;
  }
}

class _CherryPickState extends State {
  String _output = "";
  final controller = TextEditingController();
  final presenter = CherryPickPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).cherryPicker),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            AppLocalizations.of(context).cherryPickInputHint),
                    scrollPadding: EdgeInsets.all(10),
                    controller: controller,
                    keyboardType: TextInputType.multiline,
                    maxLines: 1000,
                    textAlign: TextAlign.justify,
                  ))),
          SizedBox.fromSize(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    var input = controller.text;
                    _output = presenter.getHashes(input);
                  });
                },
                child: Text(AppLocalizations.of(context).actionParse)),
            size: Size(double.infinity, 50),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: SizedBox.fromSize(
                child: Text(
                  _output,
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
