import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Menu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      Card(
        child: Text('T'),
      ),
      Card(
        child: Text('D'),
      ),
      Card(
        child: Text('S'),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) => items[index],
      ),
    );
  }
}
