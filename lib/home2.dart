import 'package:flutter/material.dart';
import 'package:coding_apple1/home1.dart';


class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Column(
          children: [
            SizedBox(height: 15,),


            InkWell(  //그동안 출현한 번호별 통계
              onTap: (){
                int resultcnt=0;

                //for(int i=1; i<last_soonbun-2; i++){
                  for(int i=1; i<10; i++){
                  for(int resultImsi=1; resultImsi < (45-num[i][1]);resultImsi++) {
                    for(int j=1; j<10; j++) {
                      if (num[i][1] + resultImsi == num[i + 1][1] ||
                          num[i][1] + resultImsi == num[i + 1][2] ||
                          num[i][1] + resultImsi == num[i + 1][3] ||
                          num[i][1] + resultImsi == num[i + 1][4] ||
                          num[i][1] + resultImsi == num[i + 1][5] ||
                          num[i][1] + resultImsi == num[i + 1][6]) {
                        resultcnt++;
                      } //if
                    }//for j
                    //print('결과 = '+resultImsi.toString());
                  }//for resultImsi

                } //for i

                //print('회차 = '+i.toString());


                // setState(() {
                //
                //   resultSangtae=3;
                //
                // });

              },
              child:
              Container(
                width: disWidthSize,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2
                    )
                ),
                alignment: Alignment.center,
                child: Text('짝수 & 홀수 출현 횟수', style: TextStyle(fontFamily: 'sandolout', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepPurple),),
              ),
            ),

            SizedBox(height: 15,),
          ],
        ),
    );
  }
}
