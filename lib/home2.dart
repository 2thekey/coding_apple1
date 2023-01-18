import 'package:flutter/material.dart';
//import 'lottoad.dart';
import 'lottovar.dart';


class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  void initState(){
    //showInterstitialAd();  //에드몹 전면광고테스트
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      //width: disWidthSize,
      //height: 600,
      child: Center(
        child:
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text('<현재까지 가능한 제외수 목록 - 로또 통계론>', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '1. 이전 1등 번호는 제외'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('- 매우 희박함\n\n'
                        '- 대한민국의 경우 나온적 없음.\n'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '2. 4연번은 이상은 제외'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('- 연속해서 4연번이 나온경우는 매우 희박함 \n\n'
                        '- 우리나라의 경우 3연번은 몇차례 나온적 있음.\n\n'
                        'ex) 1, 2, 3, 4, 16, 29 또는 9, 21, 22, 23, 24, 44\n'
                        , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '3. 같은 끝수 3개 이상은 금지'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('- 같은 끝수가 3개이상 되는 경우는 20% 미만\n\n'
                        'ex) 1, 11 21, 24, 36, 49 또는 9, 19, 21, 39, 44, 45\n'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '4. 같은 번호대에서 4개이상 선택 금지'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('- 같은 번호대에서 4개이상 출현한 빈도는 5% 미만\n\n'
                        'ex) 1, 2, 8, 9, 16, 29 또는 9, 31, 32, 37, 38, 41\n'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '5. 2개의 쌍연번은 제외'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('ex) 1, 2, 13, 14, 26, 31 또는 9, 10, 22, 28, 43, 44\n'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '6. 이전 회차와 같은 수 3개 이상 선택 금지'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  SizedBox(height: 15,),
                  ElevatedButton(
                    child: Text(
                      '7. 홀수와 짝수의 비율'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
                    onPressed: ()  {
                    },
                  ),
                  SizedBox(height: 15,),
                  FittedBox(
                    child: Text('- 6:0   5:1   1:5   0:6은 피하라\n'
                      , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                  ),





                ],
              ),
            ),
          ],
        ),

      ),
    );


    // return Container(
    //   child:
    //   Column(
    //     children: [
    //       SizedBox(height: 15,),
    //
    //
    //       InkWell(  //
    //         onTap: (){
    //           int resultcnt=0;
    //           int targetNum=1;
    //
    //           //for(int i=1; i<last_soonbun-2; i++){
    //
    //           for(int resultImsi=1; resultImsi < 45;resultImsi++) {
    //             resultcnt=0;
    //             //print('더하기'+resultImsi.toString());
    //             for(int j=1; j< last_soonbun-2 ; j++) {
    //               if (num[j][targetNum] + resultImsi == num[j + 1][1] ||
    //                   num[j][targetNum] + resultImsi == num[j + 1][2] ||
    //                   num[j][targetNum] + resultImsi == num[j + 1][3] ||
    //                   num[j][targetNum] + resultImsi == num[j + 1][4] ||
    //                   num[j][targetNum] + resultImsi == num[j + 1][5] ||
    //                   num[j][targetNum] + resultImsi == num[j + 1][6]) {
    //                 //print('있어 = '+i.toString()+'회'+num[i][1].toString()+'더하기'+resultImsi.toString());
    //                 resultcnt++;
    //                 //break;
    //               } //if
    //             }//for j
    //
    //             print(resultImsi.toString()+'='+resultcnt.toString());
    //
    //             //print('결과 = '+resultImsi.toString());
    //           }//for resultImsi
    //
    //
    //
    //           //print('회차 = '+i.toString());
    //
    //
    //           // setState(() {
    //           //
    //           //   resultSangtae=3;
    //           //
    //           // });
    //
    //         },
    //         child:
    //         Container(
    //           width: disWidthSize,
    //           height: 40,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(25.0),
    //               border: Border.all(
    //                   color: Colors.black,
    //                   style: BorderStyle.solid,
    //                   width: 2
    //               )
    //           ),
    //           alignment: Alignment.center,
    //           child: Text('두번째 번호에 더하기', style: TextStyle(fontFamily: 'sandolout', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepPurple),),
    //         ),
    //       ),
    //
    //       SizedBox(height: 15,),
    //     ],
    //   ),
    // );
  }
}