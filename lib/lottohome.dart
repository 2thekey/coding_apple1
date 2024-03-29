import 'package:coding_apple1/myappbar.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:get/get.dart';

import 'package:coding_apple1/main.dart';
import 'dart:convert';
//import 'package:http/http.dart' as http;

import 'dart:js' as js;
import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
//import 'package:lomansal/lottovar.dart';
import 'lottovar.dart';
//import 'lottoad.dart';




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
      label: 'HOME',
      icon: Icon(Icons.home),
    ),

    const BottomNavigationBarItem(
      label: '제외수 찾기',
      icon: Icon(Icons.search),
    ),

    const BottomNavigationBarItem(
      label: '꿈과 로또',
      icon: Icon(Icons.maps_ugc),
    ),

    const BottomNavigationBarItem(
      label: '개인정보보호정책',
      icon: Icon(Icons.folder_copy),
    ),


  ];

  @override

  void initState(){
    //lottoToast('시작', context);
    //print('시작');
    // myget();
    // myget2();
    //createRewardedAd();
    //createInterstitialAd();
    super.initState();
  }

  @override
  void dispose() {

    // interstitialAd?.dispose();
    // rewardedAd?.dispose();
    // rewardedInterstitialAd?.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {


    return Scaffold(


      appBar: //MyAppBar(),
      AppBar(

        //centerTitle: true,
        title: InkWell(
          onTap: (){
            const url = 'https://lotto.naepo.xyz/';
            js.context.callMethod('open', [url,'_self']);

          },
          child: const Text.rich(
            TextSpan(
             // text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(text: '로', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '또', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                TextSpan(text: '만', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '이', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                TextSpan(text: ' 살', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '길이다     ', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                //TextSpan(text: '!', style: TextStyle(fontFamily: 'sandolout',fontSize: 38,fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
        ),




        //Text('로또만이 살 길이다!!!', style: TextStyle(fontFamily: 'sandolout',fontSize: 40,fontWeight: FontWeight.bold, color: Colors.black), ),
        actions: <Widget>[
          // for(var ijk=1; ijk <= heartCount; ijk++)
          // Row(
          //   children: [
          //     Icon(Icons.favorite,color: Colors.deepOrange,),
          //
          //   ],
          // ),
          //
          // if(heartCount<5)
          // for(var ijk=1; ijk <= (5-heartCount); ijk++)
          //   Row(
          //     children: [
          //       Icon(Icons.favorite_border,color: Colors.grey,),
          //
          //     ],
          //   ),


          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.red),
            onPressed: () {

              //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("snack")));

              lottoToast2(context);

            },
          ),
        ],

        centerTitle: true,
        backgroundColor: Colors.white,
      ),







      //하단플로팅 버튼 시작

      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   //Get.offAll(() => const MainPage());
      // },
      //   backgroundColor: Color(0xFFEF7532),
      //   child: Icon(Icons.home),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar:
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        //unselectedItemColor: Colors.grey.withOpacity(.60),
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        onTap: (int index) {
          // if (index == 1) {
          //   showDialog( //경고창
          //       context: context,
          //       //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
          //       barrierDismissible: false,
          //       builder: (BuildContext context) {
          //         return AlertDialog(
          //           // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10.0)),
          //           //Dialog Main Title
          //           title: Column(
          //             children: <Widget>[
          //               new Text("'준비중...'", style: TextStyle(
          //                   fontFamily: 'sandol',
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.red),),
          //             ],
          //           ),
          //           //
          //           content: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Text(
          //                 "제외수 찾기는 준비중입니다.", style: TextStyle(
          //                   fontFamily: 'sandol',
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.red),
          //               ),
          //             ],
          //           ),
          //           actions: <Widget>[
          //             new ElevatedButton(
          //               child: new Text("확인"),
          //               onPressed: () {
          //                 Navigator.pop(context);
          //               },
          //             ),
          //           ],
          //         );
          //       });
          //   index=0;
          // } //if
          // else {
          //   setState(() {
          //     _selectedIndex = index;
          //   });
          // } //else

          setState(() {
            _selectedIndex = index;
          });

        },

        items: bottomItems,
      ),


      body:  pages[_selectedIndex],
    );
  }
}

