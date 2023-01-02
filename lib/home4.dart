import 'package:flutter/material.dart';
//import 'lottoad.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  void initState(){
    //showInterstitialAd();  //에드몹 전면광고테스트
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text('취미로 만든 앱, \n\n\n 수집되는 개인정보 없음, \n\n\n 로또 통계 앱이지 당첨번호 예상하는 건 아님.'),
    );
  }
}