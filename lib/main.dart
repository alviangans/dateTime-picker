import 'package:flutter/material.dart';
import 'menu/kedua.dart';
import 'menu/ketiga.dart';
import 'menu/pertama.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DateTime Picker'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.access_alarms_sharp),
              ),
              Tab(
                icon: Icon(Icons.add_alarm_outlined),
              ),
              Tab(
                icon: Icon(Icons.add_task),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            PertamaPage(),
            KeduaPage(),
            KetigaPage(),
          ],
        ),
      ),
    );
  }
}
