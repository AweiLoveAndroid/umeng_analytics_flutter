import 'dart:io';

import 'package:flutter/material.dart';
import 'package:umeng_analytics_flutter/umeng_analytics_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static bool _inited;

  @override
  initState() {
    super.initState();
    if (_inited == null) {
      _inited = true;
      if (Platform.isAndroid) {
        UMengAnalytics.init('Android AppKey',
            mode: 0,
            reportCrash: true,
            encrypt: true,
            interval: 30000,
            logEnable: true);
      } else if (Platform.isIOS) {
        UMengAnalytics.init('ios AppKey',
            mode: 0,
            reportCrash: true,
            encrypt: true,
            interval: 30000,
            logEnable: true);
      }
      UMengAnalytics.beginPageView("home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Plugin example app'),
        ),
        body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(
                  onPressed: () {
                    UMengAnalytics.eventCounts("hello");
                  },
                  child: new Text('Running on: hello'),
                ),
              ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    UMengAnalytics.endPageView("home");
  }
}
