import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  static const IconData airplay = IconData(0xe055, fontFamily: 'MaterialIcons');
  static const IconData search = IconData(0xe8b6, fontFamily: 'MaterialIcons');
  static const IconData face = IconData(0xe87c, fontFamily: 'MaterialIcons');
  static const IconData play_circle_filled = IconData(0xe038, fontFamily: 'MaterialIcons');


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.airplay)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.face)),
                Tab(icon: Icon(Icons.play_circle_filled)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Image.asset('assets/HGU.png'),
              Image.asset('assets/facebook.png'),
              Image.asset('assets/youtube.png'),
              Image.asset('assets/search.png'),
            ],
          ),
        ),
      ),
    );
  }
}