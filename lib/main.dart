import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selctedIndex = 0;
  List<Widget> _pages = [
    Container(color: Colors.black),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selctedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selctedIndex,
          onTap: (index) {
            setState(() {
              _selctedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(_selctedIndex == 0
                    ? 'assets/vectors/home-bold.svg'
                    : 'assets/vectors/home-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(_selctedIndex == 1
                    ? 'assets/vectors/search-bold.svg'
                    : 'assets/vectors/search-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(_selctedIndex == 2
                    ? 'assets/vectors/add-square-bold.svg'
                    : 'assets/vectors/add-square-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(_selctedIndex == 3
                    ? 'assets/vectors/video-play-bold.svg'
                    : 'assets/vectors/video-play-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.png"),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
