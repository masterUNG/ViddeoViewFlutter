import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu2 extends StatefulWidget {
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  FlutterWebviewPlugin objWebView = FlutterWebviewPlugin();

  static String url =
      'https://www.youtube.com/watch?v=0ryPZa82k70&list=PLHk7DPiGKGNAZbgL6rKaSovK6NL1cJACd';

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
