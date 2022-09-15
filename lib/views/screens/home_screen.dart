import 'package:flutter/material.dart';
import 'package:tinder/constants.dart';
import 'package:tinder/views/widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              pageIdx = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundColor,
          unselectedItemColor: Colors.white,
          currentIndex: pageIdx,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: '홈'),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '탐색',
            ),
            BottomNavigationBarItem(icon: CustomIcon(), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_outlined, size: 30), label: '알림'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30), label: '프로필'),
          ]),
      body: pages[pageIdx],
    );
  }
}
