import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/dreawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child:  Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('Navigration button is pressed.'),
          // ),
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigration button is pressed.'),
            ),
              IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigration button is pressed.'),
            ),
            ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
            ],
            ),
        ),
        body: TabBarView(
          
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        
        ),
        // drawer: Container(
          // color: Colors.white,
          // padding: EdgeInsets.all(8.0),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('This is drawer')
          //   ],
          // ),
        // )
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
