import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'มาสเตอร์ อึ่ง';
  String title2 = 'www.androidthai.in.th';

  static String url =
      "https://www.youtube.com/watch?v=mtwqZpV3K1c&list=PLHk7DPiGKGNDEI-YvHjhztFCIHBBXmY7o";
  final objWebView = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();

    objWebView.close();
  }

  @override
  void dispose() {
    objWebView.dispose();
    super.dispose();
  }

  Widget showTitle() {
    return Text(
      title1,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showSubTitle() {
    return Text(title2);
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget menuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green[300]),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 100.0,
                    child: showLogo(),
                  ),
                  showTitle(),
                  showSubTitle()
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.green[900],
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.android,
              color: Colors.green[900],
            ),
            title: Text(
              'แอนดรอยด์',
              style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebviewScaffold(
      url: url,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
    ));
  }
}
