import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Center(  //로또번호 표시 존
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width-50,
                color: Colors.grey[400],
                alignment: Alignment.center,
                child: const Text('로또번호 표시 존', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),

              ),
            ),

            SizedBox(height: 25,),

            Center(  //선택된 로또번호와 조회버튼
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width-50,
                color: Colors.grey[800],
                alignment: Alignment.center,
                child: const Text('선택된 로또번호', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),

              ),
            ),

            SizedBox(height: 25,),

            Center(  //결과값 표시 존
              child: Container(
                height: 600,
                width: MediaQuery.of(context).size.width-50,
                color: Colors.grey[100],
                alignment: Alignment.center,
                child: const Text('결과값 표시', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),

              ),
            ),



          ],
        ),
      ],
    );
  }
}
