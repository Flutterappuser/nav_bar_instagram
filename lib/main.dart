import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset('assets/vectors/home-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset('assets/vectors/search-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon:
                    SvgPicture.asset('assets/vectors/add-square-outline.svg')),
            BottomNavigationBarItem(
                label: '',
                icon:
                    SvgPicture.asset('assets/vectors/video-play-outline.svg')),
            BottomNavigationBarItem(
                label: 'test',
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
