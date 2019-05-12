import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu4 extends StatefulWidget {
  @override
  _Menu4State createState() => _Menu4State();
}

class _Menu4State extends State<Menu4> {
  FlutterWebviewPlugin objWebView = FlutterWebviewPlugin();

  static String url =
      'https://www.youtube.com/watch?v=0VaCP4nUMKo&list=PLHk7DPiGKGND0oHXhBFToYBCOOJHEkpYr';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objWebView.close();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    objWebView.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
      appBar: AppBar(
        title: Text('Menu 1'),
      ),
    );
  }
}
