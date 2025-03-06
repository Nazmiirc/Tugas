import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos/core/app_color.dart';
import 'package:pos/ui/home_screen.dart';
import 'package:pos/ui/profile_screen.dart';
import 'package:pos/ui/ticket_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int posisiSaatInit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[posisiSaatInit],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: posisiSaatInit,
        onTap: (index) {
          setState(() {
            posisiSaatInit = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('icons/home.png'), label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset('icons/ticket.svg'), label: 'Ticket'),
          // BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Image.asset('icons/setting.png'), label: 'Profile'),
        ],
      ),
    );
  }

  List screen = [
    HomeScreen(),
    ProfileScreen(),
    TicketScreen()
  ];
}
