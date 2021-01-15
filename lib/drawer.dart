import "package:flutter/material.dart";


class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer Demo"),
        ),
        drawer: Drawer(
            child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'DrawerHeader',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(color: Colors.blue[200]),
            ),
            ListTile(
              title: Text('Item1'),
              onTap: null,
            ),
            ListTile(
              title: Text("Item2"),
              onTap: null,
            ),
            ListTile(
              title: Text('Item3'),
              onTap: null,
            )
          ],
        )));
  }
}
