import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu5 extends StatefulWidget {
  @override
  _Menu5State createState() => _Menu5State();
}

class _Menu5State extends State<Menu5> {
  FlutterWebviewPlugin objWebView = FlutterWebviewPlugin();

  static String url =
      'https://www.youtube.com/watch?v=AGm1HZYwBsY&list=PLHk7DPiGKGNDJs_2IjhQNtQ3d83QP5m3K';

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
