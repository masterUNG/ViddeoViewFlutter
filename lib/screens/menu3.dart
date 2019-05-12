import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu3 extends StatefulWidget {
  @override
  _Menu3State createState() => _Menu3State();
}

class _Menu3State extends State<Menu3> {
  FlutterWebviewPlugin objWebView = FlutterWebviewPlugin();

  static String url =
      'https://www.youtube.com/watch?v=8E2oCYzUuVI&list=PLHk7DPiGKGNCfGKAq8hJ9nDf5_biB8jBp';

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
