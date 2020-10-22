/**
 import 'package:flutter/material.dart';
import 'package:my_router_flutter/routers/my_routers.dart'
    show DefaultRouteGroup, MyDefaultRouteGroup, MyDefaultRoutes;
import 'package:my_router_flutter/mainApp/agency_route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SelectView(IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
        value: id,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(icon, color: Colors.blue),
            new Text(text),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final basicDemos = <Widget>[
      for (final DefaultRouteGroup group in MyDefaultRouteGroup)
        _defaultRouteGroupToExpansionTile(group),
    ];
    final advancedDemos = <Widget>[
      for (final DefaultRouteGroup group in MyDefaultRouteGroup)
        _defaultRouteGroupToExpansionTile(group),
    ];

    return Scaffold(
      appBar: AppBar(
        title: new Text('首页'),
        leading: new Icon(Icons.home),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          // 非隐藏的菜单
          new IconButton(
              icon: new Icon(Icons.add_alarm),
              tooltip: 'Add Alarm',
              onPressed: () {}),
          // 隐藏的菜单
          new PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              this.SelectView(Icons.message, '发起群聊', 'A'),
              this.SelectView(Icons.group_add, '添加服务', 'B'),
              this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
            ],
            onSelected: (String action) {
              // 点击选项的时候
              switch (action) {
                case 'A':
                  break;
                case 'B':
                  break;
                case 'C':
                  break;
              }
            },
          ),
        ],
      ),
      body: IndexedStack(
        children: <Widget>[
          ListView(children: basicDemos),
          ListView(children: advancedDemos),
//          ListView(children: bookmarkAndAboutDemos),
        ],
      ),
    );
  }

  ListTile _myRouteToListTile(AgencyRoute myRoute,
      {Widget leading, IconData trialing: Icons.keyboard_arrow_right}) {
    final routeTitleTextStyle = Theme.of(context)
        .textTheme
        .bodyText2
        .copyWith(fontWeight: FontWeight.bold);
    return ListTile(
      title: Text(myRoute.title, style: routeTitleTextStyle),
      trailing: trialing == null ? null : Icon(trialing),
      subtitle: myRoute.description == null ? null : Text(myRoute.description),
      onTap: () => Navigator.of(context).pushNamed(myRoute.routeName),
    );
  }

  Widget _defaultRouteGroupToExpansionTile(
      DefaultRouteGroup defaultRouteGroup) {
    return Card(
      child: ExpansionTile(
//        leading: myRouteGroup.icon,
        title: Text(
          defaultRouteGroup.groupName,
          style: Theme.of(context).textTheme.headline6,
        ),
        children: defaultRouteGroup.routes.map(_myRouteToListTile).toList(),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:my_router_flutter/mainApp/routers/my_routers.dart'
    show DefaultRoute,  MyDefaultRoutes;
import 'package:my_router_flutter/mainApp/agency_route.dart';
import 'package:my_router_flutter/mainApp/routers/route_interface.dart';
import 'package:my_router_flutter/mainApp/routers/page_router_config.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SelectView(IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
        value: id,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(icon, color: Colors.blue),
            new Text(text),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    /*  final basicDemos = <Widget>[
      for (final DefaultRouteGroup group in MyDefaultRouteGroup)
        _defaultRouteGroupToExpansionTile(group),
    ];
    final advancedDemos = <Widget>[
      for (final DefaultRouteGroup group in MyDefaultRouteGroup)
        _defaultRouteGroupToExpansionTile(group),
    ];*/


    Widget _BuildRow(AgencyRoute root) {
      // print("++++=====${root.routeName}");
      // print("................=${root.markdownDate}");
      return ListTile(
        leading: Icon(Icons.face_sharp),
        title: Text(root.title),
        trailing: root.icon == null ? null : root.icon,
        subtitle: root.description == null ? null : Text(root.description),
        onTap: () => Navigator.of(context).pushNamed(root.routeName,arguments: {
          "id":123
        }),
          // onTap: () => Navigator.of(context).pushNamed(root.routeName)

      );
    }

    Widget _EntryItem(DefaultRoute root) {
      if (root.children  == null && root.routes == null) return ListTile(title: Text(root.groupName));
      return ExpansionTile(
        key: PageStorageKey<DefaultRoute>(root),
//        leading: Icon(Icons.face),
        title: Text(root.groupName),
        children: (root.routes != null)? root.routes.map(_BuildRow).toList() :root.children.map(_EntryItem).toList()
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: new Text('首页'),
        leading: new Icon(Icons.home),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          // 非隐藏的菜单
          new IconButton(
              icon: new Icon(Icons.add_alarm),
              tooltip: 'Add Alarm',
              onPressed: () {}),
          // 隐藏的菜单
          new PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              this.SelectView(Icons.message, '发起群聊', 'A'),
              this.SelectView(Icons.group_add, '添加服务', 'B'),
              this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
            ],
            onSelected: (String action) {
              // 点击选项的时候
              switch (action) {
                case 'A':
                  break;
                case 'B':
                  break;
                case 'C':
                  break;
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => _EntryItem(MyDefaultRoutes[index]),
        itemCount: MyDefaultRoutes.length,
      ),
    );
  }

}
