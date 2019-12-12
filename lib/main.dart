import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation menu',
                onPressed: null,
              ),
              title: Text('NGA开源版'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: null,
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: '1'),
                  Tab(text: '2'),
                  Tab(text: '3'),
                  Tab(text: '4')
                ],
              ),
            ),
            // body is the majority of the screen.
            body: TabBarView(
              children: <Widget>[
                Center(child: Text('1')),
                Center(child: Text('2')),
                Center(child: Text('3')),
                Center(child: Text('4')),
              ],
            )));
  }
}

class MyTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DefaultTabController示例'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '热点',
              ),
              Tab(
                text: '体育',
              ),
              Tab(
                text: '科技',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('热点')),
            Center(child: Text('体育')),
            Center(child: Text('科技')),
          ],
        ),
      ),
    );
  }
}
