//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:fluttertoast/fluttertoast_web.dart';


var ii=0;

//var choice_Bunho=List<int>.filled(6, 46);
var choice_Bunho=List<String>.filled(6, ' ');
var choice_Bunho_Int=List<int>.filled(6, 46);
var resultBunho=List<int>.filled(46, 0);
var num=List.generate(last_soonbun,(i) => List.filled(8, 0, growable: true), growable:true);
int last_soonbun=1040;
List<int> dangchum_Count=[0,0,0,0,0,0];
List<String> dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
var conHeight=45.0;  //숫자한개 컨테이너 높이
var conWidth=40.0; //숫자한개 컨테이너 넓이

double disWidthSize=420; //화면 사이즈
double sizeboxWidth=16;

int resultSangtae=0;
// List<int> dangchum3=[0];
// List<int> dangchum4=[0];
// List<int> dangchum5=[0];



class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  var bunhoSangtae =List<int>.filled(46, 0);

  var imgPath = '';

    @override



  Widget build(BuildContext context) {
      myget();
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: disWidthSize,
              height: 100,
              //color: Colors.grey[100],
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  //color: Colors.grey[400],
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2
                  )),

              child: Text('AD1'),

            ),
            SizedBox(height: 15,),

            Center( //로또번호 표시 존
              child: Container(
                  //height: 300,
                  //width: MediaQuery.of(context).size.width - 50,
                  width: disWidthSize,
                  //color: Colors.grey[100],
                  alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    //color: Colors.grey[400],
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2
                    )),
                  child:

                  Column(

                    children: [

                      SizedBox(height: 15,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(1),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(2),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(3),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(4),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(5),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(6),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(7),
                          SizedBox(width: 20,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(8),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(9),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(10),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(11),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(12),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(13),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(14),
                          SizedBox(width: 20,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(15),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(16),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(17),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(18),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(19),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(20),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(21),
                          SizedBox(width: sizeboxWidth,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(22),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(23),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(24),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(25),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(26),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(27),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(28),
                          SizedBox(width: 20,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(29),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(30),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(31),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(32),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(33),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(34),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(35),
                          SizedBox(width: 20,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(36),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(37),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(38),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(39),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(40),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(41),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(42),
                          SizedBox(width: 20,),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(

                        children: [
                          SizedBox(width: 20,),
                          bbbCheck(43),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(44),
                          SizedBox(width: sizeboxWidth,),
                          bbbCheck(45),
                          SizedBox(width: sizeboxWidth,),

                          InkWell(
                            onTap: (){

                              //자동선택 초기화
                              ii=0;
                              choice_Bunho=List<String>.filled(6, ' ');
                              choice_Bunho_Int=List<int>.filled(6, 46);
                              dangchum_Count=[0,0,0,0,0,0];
                              dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
                              bunhoSangtae =List<int>.filled(46, 0);
                              //자동선택 초기화 끝


                              var autoNumber = (List<int>.generate(45, (i) =>
                              i+1)..shuffle()).sublist(0,6);
                              //var number = (List<int>.generate(45, (i) =>
                              //                               ++i)..shuffle()).sublist(0,6);

                              autoNumber.sort();
                              // print('당첨번호');
                              // print(autoNumber);
                              //  print(autoNumber[1]);


                              bunhoSangtae[autoNumber[0]]=1;
                              bunhoSangtae[autoNumber[1]]=1;
                              bunhoSangtae[autoNumber[2]]=1;
                              bunhoSangtae[autoNumber[3]]=1;
                              bunhoSangtae[autoNumber[4]]=1;
                              bunhoSangtae[autoNumber[5]]=1;

                              choice_Bunho_Int[0]=autoNumber[0];
                              choice_Bunho_Int[1]=autoNumber[1];
                              choice_Bunho_Int[2]=autoNumber[2];
                              choice_Bunho_Int[3]=autoNumber[3];
                              choice_Bunho_Int[4]=autoNumber[4];
                              choice_Bunho_Int[5]=autoNumber[5];

                              choice_Bunho[0]=choice_Bunho_Int[0].toString();
                              choice_Bunho[1]=choice_Bunho_Int[1].toString();
                              choice_Bunho[2]=choice_Bunho_Int[2].toString();
                              choice_Bunho[3]=choice_Bunho_Int[3].toString();
                              choice_Bunho[4]=choice_Bunho_Int[4].toString();
                              choice_Bunho[5]=choice_Bunho_Int[5].toString();

                              ii=6;

                              setState(() {

                              });

                            },
                            child:
                            Container(
                              height: conHeight,
                              width: conWidth*2+20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  //color: Colors.grey[400],
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 2
                                  )),

                              alignment: Alignment.center,
                              child:
                              Text('자동선택', style: TextStyle(fontFamily: 'sandolout', fontSize: 25,   color: Colors.black),),
                            ),
                          ),

                          SizedBox(width: 20,),

                          InkWell(
                            onTap: (){

                              setState(() {
                                ii=0;
                                choice_Bunho=List<String>.filled(6, ' ');
                                choice_Bunho_Int=List<int>.filled(6, 46);
                                dangchum_Count=[0,0,0,0,0,0];
                                dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
                                bunhoSangtae =List<int>.filled(46, 0);
                                resultSangtae=0;
                              });

                            },
                            child: Container(
                              height: conHeight,
                              width: conWidth*2+20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  //color: Colors.grey[400],
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 2
                                  )),

                              alignment: Alignment.center,
                              child:
                              Text('초 기 화', style: TextStyle(fontFamily: 'sandolout', fontSize: 25,   color: Colors.black),),
                            ),
                          ),



                          // bbbCheck(11),
                          // SizedBox(width: 30,),
                          // bbbCheck(12),
                          // SizedBox(width: 30,),
                          // bbbCheck(13),
                          // SizedBox(width: 30,),
                          // bbbCheck(14),
                        ],
                      ),

                      SizedBox(height: 15,),

                    ],
                  ),



              ),
            ),//로또번호표시존

            SizedBox(height: 20,),












            Center( //선택된 로또번호와 조회버튼
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    //width: MediaQuery.of(context).size.width - 50,
                    width: disWidthSize,
                    color: Colors.grey[100],
                    alignment: Alignment.center,
                    child: //const Text('선택된 로또번호', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //SizedBox(width: 15,),





                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[0]!=46){
                                  bbbCheck2(choice_Bunho_Int[0]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[0].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),

                            SizedBox(width: 15,),

                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[1]!=46){
                                  bbbCheck2(choice_Bunho_Int[1]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),

                            SizedBox(width: 15,),

                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[2]!=46){
                                  bbbCheck2(choice_Bunho_Int[2]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),

                            SizedBox(width: 15,),

                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[3]!=46){
                                  bbbCheck2(choice_Bunho_Int[3]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),

                            SizedBox(width: 15,),

                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[4]!=46){
                                  bbbCheck2(choice_Bunho_Int[4]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),

                            SizedBox(width: 15,),

                            InkWell(
                              onTap: (){

                                if(choice_Bunho_Int[5]!=46){
                                  bbbCheck2(choice_Bunho_Int[5]);
                                }


                              },
                              child: Container(
                                height: 45,
                                width: 55,
                                //color: Colors.orange,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                                child: Text(choice_Bunho[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                              ),
                            ),
                          ],
                        ),


                  ),

                    SizedBox(height: 20,),

                  
                    Column(
                      children: [
                        InkWell(
                          onTap: (){






                            // dangchum_Count.clear();
                            // dangchum_Soonbun.clear();
                            // dangchum3.clear();
                            // dangchum2.clear();
                            // dangchum1.clear();

                            int dang=0;

                            dangchum_Count=[0,0,0,0,0,0];
                            dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
                            // dangchum3.add(0);
                            // dangchum4.add(0);
                            // dangchum5.add(0);

                            for (int i =1 ; i < last_soonbun; i++) {
                              for (int j = 1; j < 7; j++) {
                                for (int k = 0; k < 6; k++) {
                                  if (num[i][j] == choice_Bunho_Int[k]) {
                                    dang++;
                                    break;
                                  }  //if

                                  //  print('i:'+i.toString()+',j:'+j.toString()+',k:'+k.toString());


                                } //for k
                              }  //for j

                              switch(dang) {
                                case 0 :
                                case 1 :
                                case 2 : break; //print('NO 당첨'); break;
                                case 3 : dangchum_Count[5]++;
                                         if (dangchum_Count[5]%7 > 0 && dangchum_Count[5] >= 1) {
                                          dangchum_Soonbun[5]=dangchum_Soonbun[5]+num[i][0].toString()+','; break;
                                           }
                                         else {
                                          dangchum_Soonbun[5]=dangchum_Soonbun[5]+num[i][0].toString()+',\n'; break;
                                         }

                                case 4 : dangchum_Count[4]++;
                                         if (dangchum_Count[4]%7 > 0 && dangchum_Count[4] >= 1) {
                                            dangchum_Soonbun[4]=dangchum_Soonbun[4]+num[i][0].toString()+','; break;
                                         }
                                         else {
                                            dangchum_Soonbun[4]=dangchum_Soonbun[4]+num[i][0].toString()+',\n'; break;
                                              }
                                case 5 : if(num[i][7]==choice_Bunho_Int[0] ||  num[i][7]==choice_Bunho_Int[1] || num[i][7]==choice_Bunho_Int[2] || num[i][7]==choice_Bunho_Int[3] || num[i][7]==choice_Bunho_Int[4] || num[i][7]==choice_Bunho_Int[5])
                                {
                                  dangchum_Count[2]++;
                                  if (dangchum_Count[2]%7 > 0 && dangchum_Count[2] >= 1) {

                                    dangchum_Soonbun[2]=dangchum_Soonbun[2]+num[i][0].toString()+','; break;
                                  }
                                  else {

                                    dangchum_Soonbun[2]=dangchum_Soonbun[2]+num[i][0].toString()+',\n'; break;
                                  }
                                } //if
                                dangchum_Count[3]++;
                                if (dangchum_Count[3]%7 > 0 && dangchum_Count[3] >= 1) {

                                  dangchum_Soonbun[3]=dangchum_Soonbun[3]+num[i][0].toString()+','; break;
                                }
                                else {

                                  dangchum_Soonbun[3]=dangchum_Soonbun[3]+num[i][0].toString()+',\n'; break;
                                }
                                case 6 : dangchum_Count[1]++;
                                  if (dangchum_Count[1]%7 > 0 && dangchum_Count[1] >= 1) {
                                  dangchum_Soonbun[1]=dangchum_Soonbun[1]+num[i][0].toString()+','; break;
                                }
                                else {
                                  dangchum_Soonbun[1]=dangchum_Soonbun[1]+num[i][0].toString()+',\n'; break;
                                }

                              } //switch
                              dang=0;
                            }  //for i

                            //print('5등:'+dangchum5[0].toString()+',   4등:'+dangchum4[0].toString()+',   3등:'+dangchum3[0].toString()+
                              //  ',   2등:'+dangchum2[0].toString()+',   1등:'+dangchum1[0].toString());   //당첨 누적. 3=5등, 4=4등, 5=3등

                            //print('5등 회차:  $dangchum5');
                            //print('4등 회차:  $dangchum4');
                            //print('3등 회차:  $dangchum3');
                            //print('2등 회차:  $dangchum2');
                            //print('1등 회차:  $dangchum1');

                            setState(() {

                              resultSangtae=1;

                            });






                          },
                            child:
                            Container(
                              width: disWidthSize,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 2
                                  )
                              ),
                              alignment: Alignment.center,
                              child: Text('그동안 당첨내역 조회하기 (번호 3개 이상 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        ),
                        ),

                        SizedBox(height: 15,),


                        InkWell(
                          onTap: (){

                            //함께나온 수 처리

                            //showToast('준비중입니다!!');

                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //     content: Text("준비중입니다!!!")));
                            resultBunho=List<int>.filled(46, 0);
                            var resultA = -1;

                            switch(ii) {

                              case 0:  {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("번호를 1개 이상 5개 이하로 선택해주세요."))); break;}
                              case 1:

                                for (int i = 1; i < last_soonbun ; i++) {

                                  if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0])) {

                                    resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                    if(resultA!=-1){

                                      for (int j=1; j<7; j++){
                                        // print(num[i][j].toString());
                                        resultBunho[num[i][j]]++;     //해당번호 카운트
                                      }

                                      resultBunho[num[i][resultA]]--;  //선택된 번호는 카운트에서 제외
                                      //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                    }

                                  }

                                }
                                print(resultBunho.toString());
                                break;
                          }







                            // setState(() {
                            //
                            // });






                          },
                          child:
                          Container(
                            width: disWidthSize,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 2
                                )
                            ),
                            alignment: Alignment.center,
                            child: Text('함께나온 번호 조회 (번호 5개 이하 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                          ),
                        ),


                      ],
                    ),
                ],
              ),
            ),

            SizedBox(height: 25,),





             // Text(bunhoSangtae.toString()),
             // Text(choice_Bunho.toString()),
              Text(choice_Bunho_Int.toString()),
             Text('ii='+ii.toString()),
             //



            resultScreen(resultSangtae),

            Container(
              width: disWidthSize,
              height: 100,
              //color: Colors.grey[100],
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  //color: Colors.grey[400],
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2
                  )),

              child: Text('AD2'),

            ),

            SizedBox(height: 25,),




          ],
        ),
      ],
    );
  }



  bbbCheck(int choiceNum) {
      var mTemp=0;



      if (bunhoSangtae[choiceNum]==0 ){ //번호가 선택되었을때


        return InkWell(
          onTap: (){
            if(ii==6){

              return setState(() {

              });}
            bunhoSangtae[choiceNum]=1;
            choice_Bunho[ii]=choiceNum.toString();
            ii++;




            mTemp=0;
            setState(() {

              if(ii > -1)
              {
                for(int i=0; i< ii+mTemp; i++)
                {
                  //var aa=choice_Bunho[i].to
                  choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
                }

                choice_Bunho_Int.sort();

                for(int i=0; i< ii+mTemp; i++)
                {
                  //var aa=choice_Bunho[i].to
                  if(choice_Bunho_Int[i]!=46) {
                    choice_Bunho[i] = choice_Bunho_Int[i].toString();
                  }
                  else
                  {
                    choice_Bunho[i]=' ';
                  }

                }

              }

            });
          },
          child: Container(
            height: conHeight,
            width: conWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                //color: Colors.grey[400],
                border: Border.all(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 1
                )),

            alignment: Alignment.center,
            child:
            Text('$choiceNum', style: const TextStyle(fontFamily: 'sandol', fontSize: 30,   color: Colors.black),),
          ),
        );
      }

      else { //번호가 해제되었을때

        return InkWell(
          onTap: (){
            bunhoSangtae[choiceNum]=0;

            //var tempBunho=choice_Num.toString();


            var tem1=choice_Bunho.indexOf(choiceNum.toString());

            choice_Bunho[choice_Bunho.indexOf(choiceNum.toString()).toInt()]='46';
            choice_Bunho_Int[tem1]=46;


            ii--;
            mTemp=1;


            setState(() {

              if(ii > -1)
              {
                for(int i=0; i< ii+mTemp; i++)
                {
                  //var aa=choice_Bunho[i].to
                  choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
                }

                choice_Bunho_Int.sort();

                for(int i=0; i< ii+mTemp; i++)
                {
                  //var aa=choice_Bunho[i].to
                  if(choice_Bunho_Int[i]!=46) {
                    choice_Bunho[i] = choice_Bunho_Int[i].toString();
                  }
                  else
                  {
                    choice_Bunho[i]=' ';
                  }

                }

              }

            });
          },
          child: Container(
            height: conHeight,
            width: conWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black,
                border: Border.all(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 1
                )),

            alignment: Alignment.center,
            child:
            Text('$choiceNum', style: const TextStyle(fontFamily: 'sandol', fontSize: 30,   color: Colors.white),),
          ),
        );
      }
  }

  void bbbCheck2(int choice_bunho_int) {
    var mTemp=0;

    bunhoSangtae[choice_bunho_int]=0;

    //var tempBunho=choice_Num.toString();


    var tem1=choice_Bunho.indexOf(choice_bunho_int.toString());

    choice_Bunho[choice_Bunho.indexOf(choice_bunho_int.toString()).toInt()]='46';
    choice_Bunho_Int[tem1]=46;


    ii--;
    mTemp=1;


    setState(() {

      if(ii > -1)
      {
        for(int i=0; i< ii+mTemp; i++)
        {
          //var aa=choice_Bunho[i].to
          choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
        }

        choice_Bunho_Int.sort();

        for(int i=0; i< ii+mTemp; i++)
        {
          //var aa=choice_Bunho[i].to
          if(choice_Bunho_Int[i]!=46) {
            choice_Bunho[i] = choice_Bunho_Int[i].toString();
          }
          else
          {
            choice_Bunho[i]=' ';
          }

        }

      }

    });
  }

  resultScreen(int screen) {

    switch(screen) {
      case 0 : {
        return Center( //결과값 표시 존


          child: Container(
            height: 100,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.center,

            child:
              Text('번호 선택 후 조회버튼 대기중...', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),)

          ),
        );
      }

      case 1:{
        return Center( //결과값 표시 존


          child: Container(
            //height: 350,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.topCenter,

            child:
              Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:30, alignment : Alignment.center, child:Text('등  수', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:30, alignment : Alignment.center, child: Text('당첨횟수', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),)),
                      Container(width:250, height:30, alignment : Alignment.center, child: Text('회           차', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),)),

                    ],
                  ),

                 Divider(thickness: 1, height: 1, color: Colors.black45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:30, alignment : Alignment.center, child:Text('1등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:30, alignment : Alignment.center, child: Text(dangchum_Count[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
                      //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[1].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                      Container(width:250, height:30, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[1])],)),

                    ],
                  ),

                  Divider(thickness: 1, height: 1, color: Colors.black45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:30, alignment : Alignment.center, child:Text('2등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:30, alignment : Alignment.center, child: Text(dangchum_Count[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
                      //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[2].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                      Container(width:250, height:30, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[2])],)),

                    ],
                  ),

                  Divider(thickness: 1, height: 1, color: Colors.black45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:30, alignment : Alignment.center, child:Text('3등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:30, alignment : Alignment.center, child: Text(dangchum_Count[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
                      //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[3].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                      Container(width:250, height:30, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[3])],)),

                    ],
                  ),

                  Divider(thickness: 1, height: 1, color: Colors.black45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:40, alignment : Alignment.center, child:Text('4등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:40, alignment : Alignment.center, child: Text(dangchum_Count[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
                      //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[4].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                      Container(width:250, height:40, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[4])],)),

                    ],
                  ),

                  Divider(thickness: 1, height: 1, color: Colors.black45),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 70, height:110, alignment : Alignment.center, child:Text('5등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),),),

                      Container(width:100, height:110, alignment : Alignment.center, child: Text(dangchum_Count[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
                      //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[5].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                      Container(width:250, height:110, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[5])],)),

                    ],
                  ),

                  Divider(thickness: 1, height: 1, color: Colors.black45),

                  SizedBox(height: 15,),


                ],

              ),

            // DataTable(
            //   columns: const [
            //     DataColumn(label: Text('등수', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),)),
            //     DataColumn(label: Text('당첨횟수', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black),)),
            //     DataColumn(label: Text('회차', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //   ],
            //   rows: [
            //     DataRow(cells: [
            //       const DataCell(Text('1등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //       DataCell(Center(child: Text(dangchum_Count[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black)))),
             //      DataCell(Wrap(children: [Text(dangchum_Soonbun[1].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
            //     ]),
            //
            //     DataRow(cells: [
            //       const DataCell(Text('2등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //       DataCell(Center(child: Text(dangchum_Count[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black)))),
            //       DataCell(Wrap(children: [Text(dangchum_Soonbun[2].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[2].length.toInt())-1))],)),
            //     ]),
            //
            //     DataRow(cells: [
            //       const DataCell(Text('3등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //       DataCell(Center(child: Text(dangchum_Count[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black)))),
            //       DataCell(Wrap(children: [Text(dangchum_Soonbun[3].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[3].length.toInt())-1))],)),
            //     ]),
            //
            //     DataRow(cells: [
            //       const DataCell(Text('4등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //       DataCell(Center(child: Text(dangchum_Count[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black)))),
            //       DataCell(Wrap(children: [Text(dangchum_Soonbun[4].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[4].length.toInt())-1))],)),
            //     ]),
            //
            //     DataRow(cells: [
            //       const DataCell(Text('5등', style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black))),
            //       DataCell(Center(child: Text(dangchum_Count[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.black)))),
            //       DataCell(Wrap(children: [Text(dangchum_Soonbun[5].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[5].length.toInt())-1))],)),
            //
            //     ]),
            //
            //   ],
            // ),

          ),
        );
      }
    }


  }

}


 void myget() async {

    var num2 = [
      0,0,0,0,0,0,0,0,
      1,10,23,29,33,37,40,16,
      2,9,13,21,25,32,42,2,
      3,11,16,19,21,27,31,30,
      4,14,27,30,31,40,42,2,
      5,16,24,29,40,41,42,3,
      6,14,15,26,27,40,42,34,
      7,2,9,16,25,26,40,42,
      8,8,19,25,34,37,39,9,
      9,2,4,16,17,36,39,14,
      10,9,25,30,33,41,44,6,
      11,1,7,36,37,41,42,14,
      12,2,11,21,25,39,45,44,
      13,22,23,25,37,38,42,26,
      14,2,6,12,31,33,40,15,
      15,3,4,16,30,31,37,13,
      16,6,7,24,37,38,40,33,
      17,3,4,9,17,32,37,1,
      18,3,12,13,19,32,35,29,
      19,6,30,38,39,40,43,26,
      20,10,14,18,20,23,30,41,
      21,6,12,17,18,31,32,21,
      22,4,5,6,8,17,39,25,
      23,5,13,17,18,33,42,44,
      24,7,8,27,29,36,43,6,
      25,2,4,21,26,43,44,16,
      26,4,5,7,18,20,25,31,
      27,1,20,26,28,37,43,27,
      28,9,18,23,25,35,37,1,
      29,1,5,13,34,39,40,11,
      30,8,17,20,35,36,44,4,
      31,7,9,18,23,28,35,32,
      32,6,14,19,25,34,44,11,
      33,4,7,32,33,40,41,9,
      34,9,26,35,37,40,42,2,
      35,2,3,11,26,37,43,39,
      36,1,10,23,26,28,40,31,
      37,7,27,30,33,35,37,42,
      38,16,17,22,30,37,43,36,
      39,6,7,13,15,21,43,8,
      40,7,13,18,19,25,26,6,
      41,13,20,23,35,38,43,34,
      42,17,18,19,21,23,32,1,
      43,6,31,35,38,39,44,1,
      44,3,11,21,30,38,45,39,
      45,1,10,20,27,33,35,17,
      46,8,13,15,23,31,38,39,
      47,14,17,26,31,36,45,27,
      48,6,10,18,26,37,38,3,
      49,4,7,16,19,33,40,30,
      50,2,10,12,15,22,44,1,
      51,2,3,11,16,26,44,35,
      52,2,4,15,16,20,29,1,
      53,7,8,14,32,33,39,42,
      54,1,8,21,27,36,39,37,
      55,17,21,31,37,40,44,7,
      56,10,14,30,31,33,37,19,
      57,7,10,16,25,29,44,6,
      58,10,24,25,33,40,44,1,
      59,6,29,36,39,41,45,13,
      60,2,8,25,36,39,42,11,
      61,14,15,19,30,38,43,8,
      62,3,8,15,27,29,35,21,
      63,3,20,23,36,38,40,5,
      64,14,15,18,21,26,36,39,
      65,4,25,33,36,40,43,39,
      66,2,3,7,17,22,24,45,
      67,3,7,10,15,36,38,33,
      68,10,12,15,16,26,39,38,
      69,5,8,14,15,19,39,35,
      70,5,19,22,25,28,43,26,
      71,5,9,12,16,29,41,21,
      72,2,4,11,17,26,27,1,
      73,3,12,18,32,40,43,38,
      74,6,15,17,18,35,40,23,
      75,2,5,24,32,34,44,28,
      76,1,3,15,22,25,37,43,
      77,2,18,29,32,43,44,37,
      78,10,13,25,29,33,35,38,
      79,3,12,24,27,30,32,14,
      80,17,18,24,25,26,30,1,
      81,5,7,11,13,20,33,6,
      82,1,2,3,14,27,42,39,
      83,6,10,15,17,19,34,14,
      84,16,23,27,34,42,45,11,
      85,6,8,13,23,31,36,21,
      86,2,12,37,39,41,45,33,
      87,4,12,16,23,34,43,26,
      88,1,17,20,24,30,41,27,
      89,4,26,28,29,33,40,37,
      90,17,20,29,35,38,44,10,
      91,1,21,24,26,29,42,27,
      92,3,14,24,33,35,36,17,
      93,6,22,24,36,38,44,19,
      94,5,32,34,40,41,45,6,
      95,8,17,27,31,34,43,14,
      96,1,3,8,21,22,31,20,
      97,6,7,14,15,20,36,3,
      98,6,9,16,23,24,32,43,
      99,1,3,10,27,29,37,11,
      100,1,7,11,23,37,42,6,
      101,1,3,17,32,35,45,8,
      102,17,22,24,26,35,40,42,
      103,5,14,15,27,30,45,10,
      104,17,32,33,34,42,44,35,
      105,8,10,20,34,41,45,28,
      106,4,10,12,22,24,33,29,
      107,1,4,5,6,9,31,17,
      108,7,18,22,23,29,44,12,
      109,1,5,34,36,42,44,33,
      110,7,20,22,23,29,43,1,
      111,7,18,31,33,36,40,27,
      112,26,29,30,33,41,42,43,
      113,4,9,28,33,36,45,26,
      114,11,14,19,26,28,41,2,
      115,1,2,6,9,25,28,31,
      116,2,4,25,31,34,37,17,
      117,5,10,22,34,36,44,35,
      118,3,4,10,17,19,22,38,
      119,3,11,13,14,17,21,38,
      120,4,6,10,11,32,37,30,
      121,12,28,30,34,38,43,9,
      122,1,11,16,17,36,40,8,
      123,7,17,18,28,30,45,27,
      124,4,16,23,25,29,42,1,
      125,2,8,32,33,35,36,18,
      126,7,20,22,27,40,43,1,
      127,3,5,10,29,32,43,35,
      128,12,30,34,36,37,45,39,
      129,19,23,25,28,38,42,17,
      130,7,19,24,27,42,45,31,
      131,8,10,11,14,15,21,37,
      132,3,17,23,34,41,45,43,
      133,4,7,15,18,23,26,13,
      134,3,12,20,23,31,35,43,
      135,6,14,22,28,35,39,16,
      136,2,16,30,36,41,42,11,
      137,7,9,20,25,36,39,15,
      138,10,11,27,28,37,39,19,
      139,9,11,15,20,28,43,13,
      140,3,13,17,18,19,28,8,
      141,8,12,29,31,42,43,2,
      142,12,16,30,34,40,44,19,
      143,26,27,28,42,43,45,8,
      144,4,15,17,26,36,37,43,
      145,2,3,13,20,27,44,9,
      146,2,19,27,35,41,42,25,
      147,4,6,13,21,40,42,36,
      148,21,25,33,34,35,36,17,
      149,2,11,21,34,41,42,27,
      150,2,18,25,28,37,39,16,
      151,1,2,10,13,18,19,15,
      152,1,5,13,26,29,34,43,
      153,3,8,11,12,13,36,33,
      154,6,19,21,35,40,45,20,
      155,16,19,20,32,33,41,4,
      156,5,18,28,30,42,45,2,
      157,19,26,30,33,35,39,37,
      158,4,9,13,18,21,34,7,
      159,1,18,30,41,42,43,32,
      160,3,7,8,34,39,41,1,
      161,22,34,36,40,42,45,44,
      162,1,5,21,25,38,41,24,
      163,7,11,26,28,29,44,16,
      164,6,9,10,11,39,41,27,
      165,5,13,18,19,22,42,31,
      166,9,12,27,36,39,45,14,
      167,24,27,28,30,36,39,4,
      168,3,10,31,40,42,43,30,
      169,16,27,35,37,43,45,19,
      170,2,11,13,15,31,42,10,
      171,4,16,25,29,34,35,1,
      172,4,19,21,24,26,41,35,
      173,3,9,24,30,33,34,18,
      174,13,14,18,22,35,39,16,
      175,19,26,28,31,33,36,17,
      176,4,17,30,32,33,34,15,
      177,1,10,13,16,37,43,6,
      178,1,5,11,12,18,23,9,
      179,5,9,17,25,39,43,32,
      180,2,15,20,21,29,34,22,
      181,14,21,23,32,40,45,44,
      182,13,15,27,29,34,40,35,
      183,2,18,24,34,40,42,5,
      184,1,2,6,16,20,33,41,
      185,1,2,4,8,19,38,14,
      186,4,10,14,19,21,45,9,
      187,1,2,8,18,29,38,42,
      188,19,24,27,30,31,34,36,
      189,8,14,32,35,37,45,28,
      190,8,14,18,30,31,44,15,
      191,5,6,24,25,32,37,8,
      192,4,8,11,18,37,45,33,
      193,6,14,18,26,36,39,13,
      194,15,20,23,26,39,44,28,
      195,7,10,19,22,35,40,31,
      196,35,36,37,41,44,45,30,
      197,7,12,16,34,42,45,4,
      198,12,19,20,25,41,45,2,
      199,14,21,22,25,30,36,43,
      200,5,6,13,14,17,20,7,
      201,3,11,24,38,39,44,26,
      202,12,14,27,33,39,44,17,
      203,1,3,11,24,30,32,7,
      204,3,12,14,35,40,45,5,
      205,1,3,21,29,35,37,30,
      206,1,2,3,15,20,25,43,
      207,3,11,14,31,32,37,38,
      208,14,25,31,34,40,44,24,
      209,2,7,18,20,24,33,37,
      210,10,19,22,23,25,37,39,
      211,12,13,17,20,33,41,8,
      212,11,12,18,21,31,38,8,
      213,2,3,4,5,20,24,42,
      214,5,7,20,25,28,37,32,
      215,2,3,7,15,43,44,4,
      216,7,16,17,33,36,40,1,
      217,16,20,27,33,35,39,38,
      218,1,8,14,18,29,44,20,
      219,4,11,20,26,35,37,16,
      220,5,11,19,21,34,43,31,
      221,2,20,33,35,37,40,10,
      222,5,7,28,29,39,43,44,
      223,1,3,18,20,26,27,38,
      224,4,19,26,27,30,42,7,
      225,5,11,13,19,31,36,7,
      226,2,6,8,14,21,22,34,
      227,4,5,15,16,22,42,2,
      228,17,25,35,36,39,44,23,
      229,4,5,9,11,23,38,35,
      230,5,11,14,29,32,33,12,
      231,5,10,19,31,44,45,27,
      232,8,9,10,12,24,44,35,
      233,4,6,13,17,28,40,39,
      234,13,21,22,24,26,37,4,
      235,21,22,26,27,31,37,8,
      236,1,4,8,13,37,39,7,
      237,1,11,17,21,24,44,33,
      238,2,4,15,28,31,34,35,
      239,11,15,24,39,41,44,7,
      240,6,10,16,40,41,43,21,
      241,2,16,24,27,28,35,21,
      242,4,19,20,21,32,34,43,
      243,2,12,17,19,28,42,34,
      244,13,16,25,36,37,38,19,
      245,9,11,27,31,32,38,22,
      246,13,18,21,23,26,39,15,
      247,12,15,28,36,39,40,13,
      248,3,8,17,23,38,45,13,
      249,3,8,27,31,41,44,11,
      250,19,23,30,37,43,45,38,
      251,6,7,19,25,28,38,45,
      252,14,23,26,31,39,45,28,
      253,8,19,25,31,34,36,33,
      254,1,5,19,20,24,30,27,
      255,1,5,6,24,27,42,32,
      256,4,11,14,21,23,43,32,
      257,6,13,27,31,32,37,4,
      258,14,27,30,31,38,40,17,
      259,4,5,14,35,42,45,34,
      260,7,12,15,24,37,40,43,
      261,6,11,16,18,31,43,2,
      262,9,12,24,25,29,31,36,
      263,1,27,28,32,37,40,18,
      264,9,16,27,36,41,44,5,
      265,5,9,34,37,38,39,12,
      266,3,4,9,11,22,42,37,
      267,7,8,24,34,36,41,1,
      268,3,10,19,24,32,45,12,
      269,5,18,20,36,42,43,32,
      270,5,9,12,20,21,26,27,
      271,3,8,9,27,29,40,36,
      272,7,9,12,27,39,43,28,
      273,1,8,24,31,34,44,6,
      274,13,14,15,26,35,39,25,
      275,14,19,20,35,38,40,26,
      276,4,15,21,33,39,41,25,
      277,10,12,13,15,25,29,20,
      278,3,11,37,39,41,43,13,
      279,7,16,31,36,37,38,11,
      280,10,11,23,24,36,37,35,
      281,1,3,4,6,14,41,12,
      282,2,5,10,18,31,32,30,
      283,6,8,18,31,38,45,42,
      284,2,7,15,24,30,45,28,
      285,13,33,37,40,41,45,2,
      286,1,15,19,40,42,44,17,
      287,6,12,24,27,35,37,41,
      288,1,12,17,28,35,41,10,
      289,3,14,33,37,38,42,10,
      290,8,13,18,32,39,45,7,
      291,3,7,8,18,20,42,45,
      292,17,18,31,32,33,34,10,
      293,1,9,17,21,29,33,24,
      294,6,10,17,30,37,38,40,
      295,1,4,12,16,18,38,8,
      296,3,8,15,27,30,45,44,
      297,6,11,19,20,28,32,34,
      298,5,9,27,29,37,40,19,
      299,1,3,20,25,36,45,24,
      300,7,9,10,12,26,38,39,
      301,7,11,13,33,37,43,26,
      302,13,19,20,32,38,42,4,
      303,2,14,17,30,38,45,43,
      304,4,10,16,26,33,41,38,
      305,7,8,18,21,23,39,9,
      306,4,18,23,30,34,41,19,
      307,5,15,21,23,25,45,12,
      308,14,15,17,19,37,45,40,
      309,1,2,5,11,18,36,22,
      310,1,5,19,28,34,41,16,
      311,4,12,24,27,28,32,10,
      312,2,3,5,6,12,20,25,
      313,9,17,34,35,43,45,2,
      314,15,17,19,34,38,41,2,
      315,1,13,33,35,43,45,23,
      316,10,11,21,27,31,39,43,
      317,3,10,11,22,36,39,8,
      318,2,17,19,20,34,45,21,
      319,5,8,22,28,33,42,37,
      320,16,19,23,25,41,45,3,
      321,12,18,20,21,25,34,42,
      322,9,18,29,32,38,43,20,
      323,10,14,15,32,36,42,3,
      324,2,4,21,25,33,36,17,
      325,7,17,20,32,44,45,33,
      326,16,23,25,33,36,39,40,
      327,6,12,13,17,32,44,24,
      328,1,6,9,16,17,28,24,
      329,9,17,19,30,35,42,4,
      330,3,4,16,17,19,20,23,
      331,4,9,14,26,31,44,39,
      332,16,17,34,36,42,45,3,
      333,5,14,27,30,39,43,35,
      334,13,15,21,29,39,43,33,
      335,5,9,16,23,26,45,21,
      336,3,5,20,34,35,44,16,
      337,1,5,14,18,32,37,4,
      338,2,13,34,38,42,45,16,
      339,6,8,14,21,30,37,45,
      340,18,24,26,29,34,38,32,
      341,1,8,19,34,39,43,41,
      342,1,13,14,33,34,43,25,
      343,1,10,17,29,31,43,15,
      344,1,2,15,28,34,45,38,
      345,15,20,23,29,39,42,2,
      346,5,13,14,22,44,45,33,
      347,3,8,13,27,32,42,10,
      348,3,14,17,20,24,31,34,
      349,5,13,14,20,24,25,36,
      350,1,8,18,24,29,33,35,
      351,5,25,27,29,34,36,33,
      352,5,16,17,20,26,41,24,
      353,11,16,19,22,29,36,26,
      354,14,19,36,43,44,45,1,
      355,5,8,29,30,35,44,38,
      356,2,8,14,25,29,45,24,
      357,10,14,18,21,36,37,5,
      358,1,9,10,12,21,40,37,
      359,1,10,19,20,24,40,23,
      360,4,16,23,25,35,40,27,
      361,5,10,16,24,27,35,33,
      362,2,3,22,27,30,40,29,
      363,11,12,14,21,32,38,6,
      364,2,5,7,14,16,40,4,
      365,5,15,21,25,26,30,31,
      366,5,12,19,26,27,44,38,
      367,3,22,25,29,32,44,19,
      368,11,21,24,30,39,45,26,
      369,17,20,35,36,41,43,21,
      370,16,18,24,42,44,45,17,
      371,7,9,15,26,27,42,18,
      372,8,11,14,16,18,21,13,
      373,15,26,37,42,43,45,9,
      374,11,13,15,17,25,34,26,
      375,4,8,19,25,27,45,7,
      376,1,11,13,24,28,40,7,
      377,6,22,29,37,43,45,23,
      378,5,22,29,31,34,39,43,
      379,6,10,22,31,35,40,19,
      380,1,2,8,17,26,37,27,
      381,1,5,10,12,16,20,11,
      382,10,15,22,24,27,42,19,
      383,4,15,28,33,37,40,25,
      384,11,22,24,32,36,38,7,
      385,7,12,19,21,29,32,9,
      386,4,7,10,19,31,40,26,
      387,1,26,31,34,40,43,20,
      388,1,8,9,17,29,32,45,
      389,7,16,18,20,23,26,3,
      390,16,17,28,37,39,40,15,
      391,10,11,18,22,28,39,30,
      392,1,3,7,8,24,42,43,
      393,9,16,28,40,41,43,21,
      394,1,13,20,22,25,28,15,
      395,11,15,20,26,31,35,7,
      396,18,20,31,34,40,45,30,
      397,12,13,17,22,25,33,8,
      398,10,15,20,23,42,44,7,
      399,1,2,9,17,19,42,20,
      400,9,21,27,34,41,43,2,
      401,6,12,18,31,38,43,9,
      402,5,9,15,19,22,36,32,
      403,10,14,22,24,28,37,26,
      404,5,20,21,24,33,40,36,
      405,1,2,10,25,26,44,4,
      406,7,12,21,24,27,36,45,
      407,6,7,13,16,24,25,1,
      408,9,20,21,22,30,37,16,
      409,6,9,21,31,32,40,38,
      410,1,3,18,32,40,41,16,
      411,11,14,22,35,37,39,5,
      412,4,7,39,41,42,45,40,
      413,2,9,15,23,34,40,3,
      414,2,14,15,22,23,44,43,
      415,7,17,20,26,30,40,24,
      416,5,6,8,11,22,26,44,
      417,4,5,14,20,22,43,44,
      418,11,13,15,26,28,34,31,
      419,2,11,13,14,28,30,7,
      420,4,9,10,29,31,34,27,
      421,6,11,26,27,28,44,30,
      422,8,15,19,21,34,44,12,
      423,1,17,27,28,29,40,5,
      424,10,11,26,31,34,44,30,
      425,8,10,14,27,33,38,3,
      426,4,17,18,27,39,43,19,
      427,6,7,15,24,28,30,21,
      428,12,16,19,22,37,40,8,
      429,3,23,28,34,39,42,16,
      430,1,3,16,18,30,34,44,
      431,18,22,25,31,38,45,6,
      432,2,3,5,11,27,39,33,
      433,19,23,29,33,35,43,27,
      434,3,13,20,24,33,37,35,
      435,8,16,26,30,38,45,42,
      436,9,14,20,22,33,34,28,
      437,11,16,29,38,41,44,21,
      438,6,12,20,26,29,38,45,
      439,17,20,30,31,37,40,25,
      440,10,22,28,34,36,44,2,
      441,1,23,28,30,34,35,9,
      442,25,27,29,36,38,40,41,
      443,4,6,10,19,20,44,14,
      444,11,13,23,35,43,45,17,
      445,13,20,21,30,39,45,32,
      446,1,11,12,14,26,35,6,
      447,2,7,8,9,17,33,34,
      448,3,7,13,27,40,41,36,
      449,3,10,20,26,35,43,36,
      450,6,14,19,21,23,31,13,
      451,12,15,20,24,30,38,29,
      452,8,10,18,30,32,34,27,
      453,12,24,33,38,40,42,30,
      454,13,25,27,34,38,41,10,
      455,4,19,20,26,30,35,24,
      456,1,7,12,18,23,27,44,
      457,8,10,18,23,27,40,33,
      458,4,9,10,32,36,40,18,
      459,4,6,10,14,25,40,12,
      460,8,11,28,30,43,45,41,
      461,11,18,26,31,37,40,43,
      462,3,20,24,32,37,45,4,
      463,23,29,31,33,34,44,40,
      464,6,12,15,34,42,44,4,
      465,1,8,11,13,22,38,31,
      466,4,10,13,23,32,44,20,
      467,2,12,14,17,24,40,39,
      468,8,13,15,28,37,43,17,
      469,4,21,22,34,37,38,33,
      470,10,16,20,39,41,42,27,
      471,6,13,29,37,39,41,43,
      472,16,25,26,31,36,43,44,
      473,8,13,20,22,23,36,34,
      474,4,13,18,31,33,45,43,
      475,1,9,14,16,21,29,3,
      476,9,12,13,15,37,38,27,
      477,14,25,29,32,33,45,37,
      478,18,29,30,37,39,43,8,
      479,8,23,25,27,35,44,24,
      480,3,5,10,17,30,31,16,
      481,3,4,23,29,40,41,20,
      482,1,10,16,24,25,35,43,
      483,12,15,19,22,28,34,5,
      484,1,3,27,28,32,45,11,
      485,17,22,26,27,36,39,20,
      486,1,2,23,25,38,40,43,
      487,4,8,25,27,37,41,21,
      488,2,8,17,30,31,38,25,
      489,2,4,8,15,20,27,11,
      490,2,7,26,29,40,43,42,
      491,8,17,35,36,39,42,4,
      492,22,27,31,35,37,40,42,
      493,20,22,26,33,36,37,25,
      494,5,7,8,15,30,43,22,
      495,4,13,22,27,34,44,6,
      496,4,13,20,29,36,41,39,
      497,19,20,23,24,43,44,13,
      498,13,14,24,32,39,41,3,
      499,5,20,23,27,35,40,43,
      500,3,4,12,20,24,34,41,
      501,1,4,10,17,31,42,2,
      502,6,22,28,32,34,40,26,
      503,1,5,27,30,34,36,40,
      504,6,14,22,26,43,44,31,
      505,7,20,22,25,38,40,44,
      506,6,9,11,22,24,30,31,
      507,12,13,32,33,40,41,4,
      508,5,27,31,34,35,43,37,
      509,12,25,29,35,42,43,24,
      510,12,29,32,33,39,40,42,
      511,3,7,14,23,26,42,24,
      512,4,5,9,13,26,27,1,
      513,5,8,21,23,27,33,12,
      514,1,15,20,26,35,42,9,
      515,2,11,12,15,23,37,8,
      516,2,8,23,41,43,44,30,
      517,1,9,12,28,36,41,10,
      518,14,23,30,32,34,38,6,
      519,6,8,13,16,30,43,3,
      520,4,22,27,28,38,40,1,
      521,3,7,18,29,32,36,19,
      522,4,5,13,14,37,41,11,
      523,1,4,37,38,40,45,7,
      524,10,11,29,38,41,45,21,
      525,11,23,26,29,39,44,22,
      526,7,14,17,20,35,39,31,
      527,1,12,22,32,33,42,38,
      528,5,17,25,31,39,40,10,
      529,18,20,24,27,31,42,39,
      530,16,23,27,29,33,41,22,
      531,1,5,9,21,27,35,45,
      532,16,17,23,24,29,44,3,
      533,9,14,15,17,31,33,23,
      534,10,24,26,29,37,38,32,
      535,11,12,14,15,18,39,34,
      536,7,8,18,32,37,43,12,
      537,12,23,26,30,36,43,11,
      538,6,10,18,31,32,34,11,
      539,3,19,22,31,42,43,26,
      540,3,12,13,15,34,36,14,
      541,8,13,26,28,32,34,43,
      542,5,6,19,26,41,45,34,
      543,13,18,26,31,34,44,12,
      544,5,17,21,25,36,44,10,
      545,4,24,25,27,34,35,2,
      546,8,17,20,27,37,43,6,
      547,6,7,15,22,34,39,28,
      548,1,12,13,21,32,45,14,
      549,29,31,35,38,40,44,17,
      550,1,7,14,20,34,37,41,
      551,3,6,20,24,27,44,25,
      552,1,10,20,32,35,40,43,
      553,2,7,17,28,29,39,37,
      554,13,14,17,32,41,42,6,
      555,11,17,21,24,26,36,12,
      556,12,20,23,28,30,44,43,
      557,4,20,26,28,35,40,31,
      558,12,15,19,26,40,43,29,
      559,11,12,25,32,44,45,23,
      560,1,4,20,23,29,45,28,
      561,5,7,18,37,42,45,20,
      562,4,11,13,17,20,31,33,
      563,5,10,16,17,31,32,21,
      564,14,19,25,26,27,34,2,
      565,4,10,18,27,40,45,38,
      566,4,5,6,25,26,43,41,
      567,1,10,15,16,32,41,28,
      568,1,3,17,20,31,44,40,
      569,3,6,13,23,24,35,1,
      570,1,12,26,27,29,33,42,
      571,11,18,21,26,38,43,29,
      572,3,13,18,33,37,45,1,
      573,2,4,20,34,35,43,14,
      574,14,15,16,19,25,43,2,
      575,2,8,20,30,33,34,6,
      576,10,11,15,25,35,41,13,
      577,16,17,22,31,34,37,33,
      578,5,12,14,32,34,42,16,
      579,5,7,20,22,37,42,39,
      580,5,7,9,11,32,35,33,
      581,3,5,14,20,42,44,33,
      582,2,12,14,33,40,41,25,
      583,8,17,27,33,40,44,24,
      584,7,18,30,39,40,41,36,
      585,6,7,10,16,38,41,4,
      586,2,7,12,15,21,34,5,
      587,14,21,29,31,32,37,17,
      588,2,8,15,22,25,41,30,
      589,6,8,28,33,38,39,22,
      590,20,30,36,38,41,45,23,
      591,8,13,14,30,38,39,5,
      592,2,5,6,13,28,44,43,
      593,9,10,13,24,33,38,28,
      594,2,8,13,25,28,37,3,
      595,8,24,28,35,38,40,5,
      596,3,4,12,14,25,43,17,
      597,8,10,23,24,35,43,37,
      598,4,12,24,33,38,45,22,
      599,5,12,17,29,34,35,27,
      600,5,11,14,27,29,36,44,
      601,2,16,19,31,34,35,37,
      602,13,14,22,27,30,38,2,
      603,2,19,25,26,27,43,28,
      604,2,6,18,21,33,34,30,
      605,1,2,7,9,10,38,42,
      606,1,5,6,14,20,39,22,
      607,8,14,23,36,38,39,13,
      608,4,8,18,19,39,44,41,
      609,4,8,27,34,39,40,13,
      610,14,18,20,23,28,36,33,
      611,2,22,27,33,36,37,14,
      612,6,9,18,19,25,33,40,
      613,7,8,11,16,41,44,35,
      614,8,21,25,39,40,44,18,
      615,10,17,18,19,23,27,35,
      616,5,13,18,23,40,45,3,
      617,4,5,11,12,24,27,28,
      618,8,16,25,30,42,43,15,
      619,6,8,13,30,35,40,21,
      620,2,16,17,32,39,45,40,
      621,1,2,6,16,19,42,9,
      622,9,15,16,21,28,34,24,
      623,7,13,30,39,41,45,25,
      624,1,7,19,26,27,35,16,
      625,3,6,7,20,21,39,13,
      626,13,14,26,33,40,43,15,
      627,2,9,22,25,31,45,12,
      628,1,7,12,15,23,42,11,
      629,19,28,31,38,43,44,1,
      630,8,17,21,24,27,31,15,
      631,1,2,4,23,31,34,8,
      632,15,18,21,32,35,44,6,
      633,9,12,19,20,39,41,13,
      634,4,10,11,12,20,27,38,
      635,11,13,25,26,29,33,32,
      636,6,7,15,16,20,31,26,
      637,3,16,22,37,38,44,23,
      638,7,18,22,24,31,34,6,
      639,6,15,22,23,25,32,40,
      640,14,15,18,21,26,35,23,
      641,11,18,21,36,37,43,12,
      642,8,17,18,24,39,45,32,
      643,15,24,31,32,33,40,13,
      644,5,13,17,23,28,36,8,
      645,1,4,16,26,40,41,31,
      646,2,9,24,41,43,45,30,
      647,5,16,21,23,24,30,29,
      648,13,19,28,37,38,43,4,
      649,3,21,22,33,41,42,20,
      650,3,4,7,11,31,41,35,
      651,11,12,16,26,29,44,18,
      652,3,13,15,40,41,44,20,
      653,5,6,26,27,38,39,1,
      654,16,21,26,31,36,43,6,
      655,7,37,38,39,40,44,18,
      656,3,7,14,16,31,40,39,
      657,10,14,19,39,40,43,23,
      658,8,19,25,28,32,36,37,
      659,7,18,19,27,29,42,45,
      660,4,9,23,33,39,44,14,
      661,2,3,12,20,27,38,40,
      662,5,6,9,11,15,37,26,
      663,3,5,8,19,38,42,20,
      664,10,20,33,36,41,44,5,
      665,5,6,11,17,38,44,13,
      666,2,4,6,11,17,28,16,
      667,15,17,25,37,42,43,13,
      668,12,14,15,24,27,32,3,
      669,7,8,20,29,33,38,9,
      670,11,18,26,27,40,41,25,
      671,7,9,10,13,31,35,24,
      672,8,21,28,31,36,45,43,
      673,7,10,17,29,33,44,5,
      674,9,10,14,25,27,31,11,
      675,1,8,11,15,18,45,7,
      676,1,8,17,34,39,45,27,
      677,12,15,24,36,41,44,42,
      678,4,5,6,12,25,37,45,
      679,3,5,7,14,26,34,35,
      680,4,10,19,29,32,42,30,
      681,21,24,27,29,43,44,7,
      682,17,23,27,35,38,43,2,
      683,6,13,20,27,28,40,15,
      684,1,11,15,17,25,39,40,
      685,6,7,12,28,38,40,18,
      686,7,12,15,24,25,43,13,
      687,1,8,10,13,28,42,45,
      688,5,15,22,23,34,35,2,
      689,7,17,19,30,36,38,34,
      690,24,25,33,34,38,39,43,
      691,15,27,33,35,43,45,16,
      692,3,11,14,15,32,36,44,
      693,1,6,11,28,34,42,30,
      694,7,15,20,25,33,43,12,
      695,4,18,26,33,34,38,14,
      696,1,7,16,18,34,38,21,
      697,2,5,8,11,33,39,31,
      698,3,11,13,21,33,37,18,
      699,4,5,8,16,21,29,3,
      700,11,23,28,29,30,44,13,
      701,3,10,14,16,36,38,35,
      702,3,13,16,24,26,29,9,
      703,10,28,31,33,41,44,21,
      704,1,4,8,23,33,42,45,
      705,1,6,17,22,28,45,23,
      706,3,4,6,10,28,30,37,
      707,2,12,19,24,39,44,35,
      708,2,10,16,19,34,45,1,
      709,10,18,30,36,39,44,32,
      710,3,4,9,24,25,33,10,
      711,11,15,24,35,37,45,42,
      712,17,20,30,31,33,45,19,
      713,2,5,15,18,19,23,44,
      714,1,7,22,33,37,40,20,
      715,2,7,27,33,41,44,10,
      716,2,6,13,16,29,30,21,
      717,2,11,19,25,28,32,44,
      718,4,11,20,23,32,39,40,
      719,4,8,13,19,20,43,26,
      720,1,12,29,34,36,37,41,
      721,1,28,35,41,43,44,31,
      722,12,14,21,30,39,43,45,
      723,20,30,33,35,36,44,22,
      724,2,8,33,35,37,41,14,
      725,6,7,19,21,41,43,38,
      726,1,11,21,23,34,44,24,
      727,7,8,10,19,21,31,20,
      728,3,6,10,30,34,37,36,
      729,11,17,21,26,36,45,16,
      730,4,10,14,15,18,22,39,
      731,2,7,13,25,42,45,39,
      732,2,4,5,17,27,32,43,
      733,11,24,32,33,35,40,13,
      734,6,16,37,38,41,45,18,
      735,5,10,13,27,37,41,4,
      736,2,11,17,18,21,27,6,
      737,13,15,18,24,27,41,11,
      738,23,27,28,38,42,43,36,
      739,7,22,29,33,34,35,30,
      740,4,8,9,16,17,19,31,
      741,5,21,27,34,44,45,16,
      742,8,10,13,36,37,40,6,
      743,15,19,21,34,41,44,10,
      744,10,15,18,21,34,41,43,
      745,1,2,3,9,12,23,10,
      746,3,12,33,36,42,45,25,
      747,7,9,12,14,23,28,17,
      748,3,10,13,22,31,32,29,
      749,12,14,24,26,34,45,41,
      750,1,2,15,19,24,36,12,
      751,3,4,16,20,28,44,17,
      752,4,16,20,33,40,43,7,
      753,2,17,19,24,37,41,3,
      754,2,8,17,24,29,31,32,
      755,13,14,26,28,30,36,37,
      756,10,14,16,18,27,28,4,
      757,6,7,11,17,33,44,1,
      758,5,9,12,30,39,43,24,
      759,9,33,36,40,42,43,32,
      760,10,22,27,31,42,43,12,
      761,4,7,11,24,42,45,30,
      762,1,3,12,21,26,41,16,
      763,3,8,16,32,34,43,10,
      764,7,22,24,31,34,36,15,
      765,1,3,8,12,42,43,33,
      766,9,30,34,35,39,41,21,
      767,5,15,20,31,34,42,22,
      768,7,27,29,30,38,44,4,
      769,5,7,11,16,41,45,4,
      770,1,9,12,23,39,43,34,
      771,6,10,17,18,21,29,30,
      772,5,6,11,14,21,41,32,
      773,8,12,19,21,31,35,44,
      774,12,15,18,28,34,42,9,
      775,11,12,29,33,38,42,17,
      776,8,9,18,21,28,40,20,
      777,6,12,17,21,34,37,18,
      778,6,21,35,36,37,41,11,
      779,6,12,19,24,34,41,4,
      780,15,17,19,21,27,45,16,
      781,11,16,18,19,24,39,43,
      782,6,18,31,34,38,45,20,
      783,14,15,16,17,38,45,36,
      784,3,10,23,24,31,39,22,
      785,4,6,15,25,26,33,40,
      786,12,15,16,20,24,30,38,
      787,5,6,13,16,27,28,9,
      788,2,10,11,19,35,39,29,
      789,2,6,7,12,19,45,38,
      790,3,8,19,27,30,41,12,
      791,2,10,12,31,33,42,32,
      792,2,7,19,25,29,36,16,
      793,10,15,21,35,38,43,31,
      794,6,7,18,19,30,38,13,
      795,3,10,13,26,34,38,36,
      796,1,21,26,36,40,41,5,
      797,5,22,31,32,39,45,36,
      798,2,10,14,22,32,36,41,
      799,12,17,23,34,42,45,33,
      800,1,4,10,12,28,45,26,
      801,17,25,28,37,43,44,2,
      802,10,11,12,18,24,42,27,
      803,5,9,14,26,30,43,2,
      804,1,10,13,26,32,36,9,
      805,3,12,13,18,31,32,42,
      806,14,20,23,31,37,38,27,
      807,6,10,18,25,34,35,33,
      808,15,21,31,32,41,43,24,
      809,6,11,15,17,23,40,39,
      810,5,10,13,21,39,43,11,
      811,8,11,19,21,36,45,25,
      812,1,3,12,14,16,43,10,
      813,11,30,34,35,42,44,27,
      814,2,21,28,38,42,45,30,
      815,17,21,25,26,27,36,4,
      816,12,18,19,29,31,39,7,
      817,3,9,12,13,25,43,34,
      818,14,15,25,28,29,30,3,
      819,16,25,33,38,40,45,15,
      820,10,21,22,30,35,42,6,
      821,1,12,13,24,29,44,16,
      822,9,18,20,24,27,36,12,
      823,12,18,24,26,39,40,15,
      824,7,9,24,29,34,38,26,
      825,8,15,21,31,33,38,42,
      826,13,16,24,25,33,36,42,
      827,5,11,12,29,33,44,14,
      828,4,7,13,29,31,39,18,
      829,4,5,31,35,43,45,29,
      830,5,6,16,18,37,38,17,
      831,3,10,16,19,31,39,9,
      832,13,14,19,26,40,43,30,
      833,12,18,30,39,41,42,19,
      834,6,8,18,35,42,43,3,
      835,9,10,13,28,38,45,35,
      836,1,9,11,14,26,28,19,
      837,2,25,28,30,33,45,6,
      838,9,14,17,33,36,38,20,
      839,3,9,11,12,13,19,35,
      840,2,4,11,28,29,43,27,
      841,5,11,14,30,33,38,24,
      842,14,26,32,36,39,42,38,
      843,19,21,30,33,34,42,4,
      844,7,8,13,15,33,45,18,
      845,1,16,29,33,40,45,6,
      846,5,18,30,41,43,45,13,
      847,12,16,26,28,30,42,22,
      848,1,2,16,22,38,39,34,
      849,5,13,17,29,34,39,3,
      850,16,20,24,28,36,39,5,
      851,14,18,22,26,31,44,40,
      852,11,17,28,30,33,35,9,
      853,2,8,23,26,27,44,13,
      854,20,25,31,32,36,43,3,
      855,8,15,17,19,43,44,7,
      856,10,24,40,41,43,44,17,
      857,6,10,16,28,34,38,43,
      858,9,13,32,38,39,43,23,
      859,8,22,35,38,39,41,24,
      860,4,8,18,25,27,32,42,
      861,11,17,19,21,22,25,24,
      862,10,34,38,40,42,43,32,
      863,16,21,28,35,39,43,12,
      864,3,7,10,13,25,36,32,
      865,3,15,22,32,33,45,2,
      866,9,15,29,34,37,39,12,
      867,14,17,19,22,24,40,41,
      868,12,17,28,41,43,44,25,
      869,2,6,20,27,37,39,4,
      870,21,25,30,32,40,42,31,
      871,2,6,12,26,30,34,38,
      872,2,4,30,32,33,43,29,
      873,3,5,12,13,33,39,38,
      874,1,15,19,23,28,42,32,
      875,19,22,30,34,39,44,36,
      876,5,16,21,26,34,42,24,
      877,5,17,18,22,23,43,12,
      878,2,6,11,16,25,31,3,
      879,1,4,10,14,15,35,20,
      880,7,17,19,23,24,45,38,
      881,4,18,20,26,27,32,9,
      882,18,34,39,43,44,45,23,
      883,9,18,32,33,37,44,22,
      884,4,14,23,28,37,45,17,
      885,1,3,24,27,39,45,31,
      886,19,23,28,37,42,45,2,
      887,8,14,17,27,36,45,10,
      888,3,7,12,31,34,38,32,
      889,3,13,29,38,39,42,26,
      890,1,4,14,18,29,37,6,
      891,9,13,28,31,39,41,19,
      892,4,9,17,18,26,42,36,
      893,1,15,17,23,25,41,10,
      894,19,32,37,40,41,43,45,
      895,16,26,31,38,39,41,23,
      896,5,12,25,26,38,45,23,
      897,6,7,12,22,26,36,29,
      898,18,21,28,35,37,42,17,
      899,8,19,20,21,33,39,37,
      900,7,13,16,18,35,38,14,
      901,5,18,20,23,30,34,21,
      902,7,19,23,24,36,39,30,
      903,2,15,16,21,22,28,45,
      904,2,6,8,26,43,45,11,
      905,3,4,16,27,38,40,20,
      906,2,5,14,28,31,32,20,
      907,21,27,29,38,40,44,37,
      908,3,16,21,22,23,44,30,
      909,7,24,29,30,34,35,33,
      910,1,11,17,27,35,39,31,
      911,4,5,12,14,32,42,35,
      912,5,8,18,21,22,38,10,
      913,6,14,16,21,27,37,40,
      914,16,19,24,33,42,44,27,
      915,2,6,11,13,22,37,14,
      916,6,21,22,32,35,36,17,
      917,1,3,23,24,27,43,34,
      918,7,11,12,31,33,38,5,
      919,9,14,17,18,42,44,35,
      920,2,3,26,33,34,43,29,
      921,5,7,12,22,28,41,1,
      922,2,6,13,17,27,43,36,
      923,3,17,18,23,36,41,26,
      924,3,11,34,42,43,44,13,
      925,13,24,32,34,39,42,4,
      926,10,16,18,20,25,31,6,
      927,4,15,22,38,41,43,26,
      928,3,4,10,20,28,44,30,
      929,7,9,12,15,19,23,4,
      930,8,21,25,38,39,44,28,
      931,14,15,23,25,35,43,32,
      932,1,6,15,36,37,38,5,
      933,23,27,29,31,36,45,37,
      934,1,3,30,33,36,39,12,
      935,4,10,20,32,38,44,18,
      936,7,11,13,17,18,29,43,
      937,2,10,13,22,29,40,26,
      938,4,8,10,16,31,36,9,
      939,4,11,28,39,42,45,6,
      940,3,15,20,22,24,41,11,
      941,12,14,25,27,39,40,35,
      942,10,12,18,35,42,43,39,
      943,1,8,13,36,44,45,39,
      944,2,13,16,19,32,33,42,
      945,9,10,15,30,33,37,26,
      946,9,18,19,30,34,40,20,
      947,3,8,17,20,27,35,26,
      948,13,18,30,31,38,41,5,
      949,14,21,35,36,40,44,30,
      950,3,4,15,22,28,40,10,
      951,2,12,30,31,39,43,38,
      952,4,12,22,24,33,41,38,
      953,7,9,22,27,37,42,34,
      954,1,9,26,28,30,41,32,
      955,4,9,23,26,29,33,8,
      956,10,11,20,21,25,41,40,
      957,4,15,24,35,36,40,1,
      958,2,9,10,16,35,37,1,
      959,1,14,15,24,40,41,35,
      960,2,18,24,30,32,45,14,
      961,11,20,29,31,33,42,43,
      962,1,18,28,31,34,43,40,
      963,6,12,19,23,34,42,35,
      964,6,21,36,38,39,43,30,
      965,2,13,25,28,29,36,34,
      966,1,21,25,29,34,37,36,
      967,1,6,13,37,38,40,9,
      968,2,5,12,14,24,39,33,
      969,3,9,10,29,40,45,7,
      970,9,11,16,21,28,36,5,
      971,2,6,17,18,21,26,7,
      972,3,6,17,23,37,39,26,
      973,22,26,31,37,41,42,24,
      974,1,2,11,16,39,44,32,
      975,7,8,9,17,22,24,5,
      976,4,12,14,25,35,37,2,
      977,2,9,10,14,22,44,16,
      978,1,7,15,32,34,42,8,
      979,7,11,16,21,27,33,24,
      980,3,13,16,23,24,35,14,
      981,27,36,37,41,43,45,32,
      982,5,7,13,20,21,44,33,
      983,13,23,26,31,35,43,15,
      984,3,10,23,35,36,37,18,
      985,17,21,23,30,34,44,19,
      986,7,10,16,28,41,42,40,
      987,2,4,15,23,29,38,7,
      988,2,13,20,30,31,41,27,
      989,17,18,21,27,29,33,26,
      990,2,4,25,26,36,37,28,
      991,13,18,25,31,33,44,38,
      992,12,20,26,33,44,45,24,
      993,6,14,16,18,24,42,44,
      994,1,3,8,24,27,35,28,
      995,1,4,13,29,38,39,7,
      996,6,11,15,24,32,39,28,
      997,4,7,14,16,24,44,20,
      998,13,17,18,20,42,45,41,
      999,1,3,9,14,18,28,34,
      1000,2,8,19,22,32,42,39,
      1001,6,10,12,14,20,42,15,
      1002,17,25,33,35,38,45,15,
      1003,1,4,29,39,43,45,31,
      1004,7,15,30,37,39,44,18,
      1005,8,13,18,24,27,29,17,
      1006,8,11,15,16,17,37,36,
      1007,8,11,16,19,21,25,40,
      1008,9,11,30,31,41,44,33,
      1009,15,23,29,34,40,44,20,
      1010,9,12,15,25,34,36,3,
      1011,1,9,12,26,35,38,42,
      1012,5,11,18,20,35,45,3,
      1013,21,22,26,34,36,41,32,
      1014,3,11,14,18,26,27,21,
      1015,14,23,31,33,37,40,44,
      1016,15,26,28,34,41,42,44,
      1017,12,18,22,23,30,34,32,
      1018,3,19,21,25,37,45,35,
      1019,1,4,13,17,34,39,6,
      1020,12,27,29,38,41,45,6,
      1021,12,15,17,24,29,45,16,
      1022,5,6,11,29,42,45,28,
      1023,10,14,16,18,29,35,25,
      1024,9,18,20,22,38,44,10,
      1025,8,9,20,25,29,33,7,
      1026,5,12,13,31,32,41,34,
      1027,14,16,27,35,39,45,5,
      1028,5,7,12,13,18,35,23,
      1029,12,30,32,37,39,41,24,
      1030,2,5,11,17,24,29,9,
      1031,6,7,22,32,35,36,19,
      1032,1,6,12,19,36,42,28,
      1033,3,11,15,20,35,44,10,
      1034,26,31,32,33,38,40,11,
      1035,9,14,34,35,41,42,2,
      1036,2,5,22,32,34,45,39,
      1037,2,14,15,22,27,33,31,
      1038,7,16,24,27,37,44,2,
      1039,2,3,6,19,36,39,26
    ];

    int ij=0;
    for (int i = 0; i < last_soonbun; i++) {
      for (int j = 0; j < 8; j++) {
        num[i][j]=num2[ij];
        ij++;
      }
    }

  }

// void showToast(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.red,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM_LEFT);
// }