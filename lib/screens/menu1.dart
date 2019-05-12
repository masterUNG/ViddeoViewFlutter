import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  FlutterWebviewPlugin objWebView = FlutterWebviewPlugin();

  static String url =
      'https://www.youtube.com/watch?v=mtwqZpV3K1c&list=PLHk7DPiGKGNDEI-YvHjhztFCIHBBXmY7o';

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
