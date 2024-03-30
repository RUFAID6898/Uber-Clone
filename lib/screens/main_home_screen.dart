import 'package:flutter/material.dart';

import 'package:uber_clone_/screens/account_screen.dart';
import 'package:uber_clone_/screens/activity_screen.dart';
import 'package:uber_clone_/screens/category_screen.dart';
import 'package:uber_clone_/screens/home_screen.dart';

// ignore: must_be_immutable
class MainHomeScreen extends StatelessWidget {
  MainHomeScreen({super.key});
  final ValueNotifier _valueNotifier = ValueNotifier(0);
  List screen = [
    const HomeScreen(),
    const CategoryScreen(),
    const ActivitySreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _valueNotifier,
        builder: (context, value, child) {
          return Scaffold(
            body: screen[value],
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                selectedLabelStyle: const TextStyle(color: Colors.black),
                unselectedLabelStyle: const TextStyle(color: Colors.grey),
                currentIndex: _valueNotifier.value,
                onTap: (value) {
                  _valueNotifier.value = value;
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.category_outlined), label: 'Category'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_activity_outlined),
                      label: 'Activity'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Account'),
                ]),
          );
        });
  }
}
