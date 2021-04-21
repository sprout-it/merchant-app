import 'package:flutter/material.dart';
// import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'Screen/Delivery/index.dart';
import 'Screen/Menu/index.dart';
import 'Screen/More/index.dart';

void main() => runApp(SproutMerchant());

class SproutMerchant extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavBarIndex = useState(0);

    void _onItemTapped(int index) {
      bottomNavBarIndex.value = index;
    }

    List<Widget> _widgetOptions = <Widget>[
      Delivery(),
      Menu(),
      Text(
        'Index 3: School',
      ),
      Text(
        'Index 4: School',
      ),
      More(),
    ];
    return MaterialApp(
      title: 'Grab Merchant',
      home: SafeArea(
        child: Scaffold(
          body: _widgetOptions.elementAt(bottomNavBarIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining),
                label: 'Delivery',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                label: 'Report',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_outlined),
                label: 'More',
              ),
            ],
            currentIndex: bottomNavBarIndex.value,
            unselectedItemColor: Colors.grey[500],
            selectedItemColor: Colors.green[600],
            onTap: _onItemTapped,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}
