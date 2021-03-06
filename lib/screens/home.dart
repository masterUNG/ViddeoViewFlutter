import 'package:flutter/material.dart';
import 'menu1.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'menu4.dart';
import 'menu5.dart';

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
              size: 48.0,
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
              Icons.fingerprint,
              color: Colors.green[900],
            ),
            title: Text(
              'ชอบ 1',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เพลงโดนใจ ชอบๆๆๆ'),
            onTap: () {
              Navigator.of(context).pop();

              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu2());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.green[900],
            ),
            title: Text(
              'ชอบ 2',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เพลงโดนใจ ชอบๆๆๆ นะจ้ะ'),
            onTap: () {
              Navigator.of(context).pop();

              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu3());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.green[900],
            ),
            title: Text(
              'ชอบ 3',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เพลงโดนใจ ชอบๆๆๆ ตรงๆๆ'),
            onTap: () {
              Navigator.of(context).pop();

              var menu4Route =
                  MaterialPageRoute(builder: (BuildContext context) => Menu4());
              Navigator.of(context).push(menu4Route);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.fastfood,
              color: Colors.green[900],
            ),
            title: Text(
              'ชอบ 4',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เพลงโดนใจ ชอบๆๆๆ มากมาย'),
            onTap: () {
              Navigator.of(context).pop();

              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu5());
              Navigator.of(context).push(menuRoute);
            },
          )
        ],
      ),
    );
  }

  Widget showContent() {
    return ListView(
      children: <Widget>[
        Container(
          height: 150.0,
          child: Image.asset('images/logo.png'),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์'),
        ),
        Container(
          margin: EdgeInsets.all(30.0),
          child: Image.asset('images/bannerFlutter.png'),
        ),
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Text(
              'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Ung'),
      ),
      body: Container(
        child: showContent(),
      ),
      drawer: menuDrawer(context),
    );
  }
}
