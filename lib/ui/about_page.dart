import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class AboutPage extends StatefulWidget {


  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).aboutUsPageAppBarTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(S.of(context).formFieldAbout),
        ),
      ),
    );
  }
}