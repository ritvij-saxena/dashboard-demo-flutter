import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Demo',
      theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37474F),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                  child: CircleAvatar(
                backgroundImage: ExactAssetImage('dp.jpg'),
                minRadius: 90,
                maxRadius: 150,
              )),
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Messages',
                    style: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: PageView(
              controller: PageController(viewportFraction: 0.7),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: <Widget>[
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.orangeAccent,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.blueAccent,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.redAccent,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.greenAccent),
              ],
            ),
          ),
        ],
      ),
    );
    //Center(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Expanded(
    //         child: ListView.builder(
    //           itemCount: 20,
    //           itemBuilder: (BuildContext context, int index) {
    //             return ListTile(
    //               title: Text("Item $index"),
    //             );
    //           },
    //         ),
    //       ),
    //     ],
    //   ),
    // )
    // );
  }
}
