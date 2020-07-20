import 'package:flutter/material.dart';
import 'package:pomodoro/timer_page.dart';
import 'package:pomodoro/account_page.dart';

class BuildDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      createDrawerItem(
          icon: Icons.home,
          text: 'Home',
          onTap: () => Navigator.popAndPushNamed(context, '/')),
      createDrawerItem(
          icon: Icons.settings,
          text: 'Settings',
          onTap: () => Navigator.popAndPushNamed(context, 'account')),
      createDrawerItem(
          icon: Icons.timer,
          text: 'Timer',
          onTap: () => Navigator.popAndPushNamed(context, 'timer')),
    ]));
  }

  Widget createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
        title: Row(children: <Widget>[
          Icon(icon),
          Padding(padding: EdgeInsets.only(left: 5), child: Text(text))
        ]),
        onTap: onTap);
  }
}
