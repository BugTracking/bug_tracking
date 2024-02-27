import 'package:bug_tracking/features/home/ui/screens/Home.dart';
import 'package:bug_tracking/features/home/ui/screens/notification.dart';
import 'package:bug_tracking/features/home/ui/screens/projects.dart';
import 'package:bug_tracking/features/home/ui/screens/setting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    MyHome(),
      ProjectsScreen(),
    NotificationScreen(),
    SettingsScreen(),
  
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = MyHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only( left:30.0,right: 20.0 ,bottom: 20.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          shape: CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: Container(
        height: 60.0,
         child: BottomNavigationBar(
          backgroundColor: Colors.blue, 
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black45,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
          
             if (index >= 0 && index < screens.length) {
  currentScreen = screens[index];
}
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.other_houses_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_add),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
               ),
       ),
    );
      
    
  }
}
