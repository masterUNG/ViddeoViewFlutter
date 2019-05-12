import 'package:flutter/material.dart';
import 'menu1.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'มาสเตอร์ อึ่ง';
  String title2 = 'www.androidthai.in.th';

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
              'โดนใจ 1',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เพลงโดนใจ'),
            onTap: () {

              Navigator.of(context).pop();

              var menu1Route =
                  MaterialPageRoute(builder: (BuildContext context) => Menu1());
                  Navigator.of(context).push(menu1Route);
                 
            },
          ),
          ListTile(
            leading: Icon(
              Icons.android,
              color: Colors.green[900],
            ),
            title: Text(
              'ชอบ 1',
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
      appBar: AppBar(
        title: Text('Video Ung'),
      ),
      body: Container(
        child: Text('Hello'),
      ),
      drawer: menuDrawer(context),
    );
  }
}
