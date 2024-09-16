import 'package:flutter/material.dart';
import 'package:flutter_application_1/explorar.dart';
import 'package:flutter_application_1/home/homeView.dart';

class BancolombiaUI extends StatefulWidget {
  const BancolombiaUI({super.key});

  @override
  _NavigationBar createState() =>
    _NavigationBar();
  }

  class _NavigationBar extends State{
        int _selectedTab = 0;
        final List _pages = [
         Center(
          child: HomeView(),
        ),
        Center(
          child: Text("Transacciones"), 
        ),
        Center(
          child: Explorar(),
        ),
        Center(
          child: Text("Trámites y solicitudes"),
        ),
        Center(
          child: Text("Ajustes"),
        ),
      ];
      _changeTab(int index) {
        setState(() {
          _selectedTab = index;
        });
      }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: _pages[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.black,
          backgroundColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: "Inicio",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Transacciones"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined), label: "Explorar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "Trámites y solicitudes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Ajustes"),
          ],
        ),
      );
    }
  }
