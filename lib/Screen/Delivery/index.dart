import 'package:flutter/material.dart';
// import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Delivery extends HookWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> deliveryOrder = <Widget>[
      Text('test'),
      Text('test'),
      Text('test')
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TabBar(
            labelColor: Colors.green[500],
            indicatorColor: Colors.green[500],
            tabs: [
              Tab(text: 'Delivery Order'),
              Tab(text: 'Order History'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: deliveryOrder.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: deliveryOrder[index]));
                }),
            ListView.builder(
                itemCount: deliveryOrder.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: deliveryOrder[index]));
                }),
          ],
        ),
      ),
    );
  }
}
