import 'package:dana_copy/Aktivitas.dart';
import 'package:flutter/material.dart';

class Menubottom extends StatefulWidget {
  int activePage;
  Menubottom(this.activePage);

  @override
  State<Menubottom> createState() => _MenubottomState();
}

class _MenubottomState extends State<Menubottom> {
  void getLink(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Aktivitasview()));
    }
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        currentIndex: widget.activePage,
        onTap: getLink,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images-removebg-preview (2).png'),
              size: 24,
            ),
            label: 'Dana',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Dompet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ]);
  }
}
