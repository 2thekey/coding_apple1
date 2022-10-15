import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';




class LottoHome extends StatefulWidget {

  @override
  State<LottoHome> createState() => _LottoHomeState();
}

class _LottoHomeState extends State<LottoHome> {
  int _selectedIndex=0;

  List pages=[
    const Home1(),
    // const HomeScreen(),
    const Home2(),
    const Home3(),
    const Home4(),

  ];

  List<BottomNavigationBarItem> bottomItems=[
    const BottomNavigationBarItem(
      label: '홈1',
      icon: Icon(Icons.home),
    ),

    const BottomNavigationBarItem(
      label: '홈2',
      icon: Icon(Icons.search),
    ),

    const BottomNavigationBarItem(
      label: '홈3',
      icon: Icon(Icons.maps_ugc),
    ),

    const BottomNavigationBarItem(
      label: '홈4',
      icon: Icon(Icons.folder_copy),
    ),


  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        title: const Text('내포 Lotto',
          style: TextStyle(
              fontFamily: 'sandolout',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],

        centerTitle: true,
        backgroundColor: Colors.white,
      ),





      //하단플로팅 버튼 시작

      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.offAll(() => const MainPage());
      // },
      //   backgroundColor: Color(0xFFEF7532),
      //   child: Icon(Icons.home),
      // ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 22,
        unselectedFontSize: 13,
        currentIndex: _selectedIndex,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        onTap: (int index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: bottomItems,
      ),

      body: pages[_selectedIndex],
    );
  }
}