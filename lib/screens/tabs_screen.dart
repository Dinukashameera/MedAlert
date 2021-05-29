import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import './diary_screen.dart';
import './medication_screen.dart';
import './report_screen.dart';


class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   
 int _selectedIndex = 2;


 List<Widget> _widgetOptions = <Widget>[
    DiaryScreen(),
    MedicationScreen(),
    ReportScreen()
  ];
 
 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Some text"),),
      drawer: AppDrawer(),
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF212121),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.add_chart),
              title: Text('Diary'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_board_sharp),
              title: Text('Medication'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Report'),
            ),
 
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFfbb418),
          backgroundColor: Color(0xFF212121),
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}