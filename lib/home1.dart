import 'package:flutter/material.dart';
import 'package:get/get.dart';

var ii=0;
//var choice_Bunho=List<int>.filled(6, 46);
var choice_Bunho=List<int>.empty(growable: true);


class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  var bunhoSangtae =List<int>.filled(46, 0);


  List<String> bunHoPath = ['0','assets/image/off_1.png','assets/image/off_2.png',
    'assets/image/off_3.png','assets/image/off_4.png','assets/image/off_5.png','assets/image/off_6.png','assets/image/off_7.png','assets/image/off_8.png','assets/image/off_9.png',
    'assets/image/off_10.png','assets/image/off_11.png','assets/image/off_12.png','assets/image/off_13.png','assets/image/off_14.png','assets/image/off_15.png','assets/image/off_16.png',
    'assets/image/off_17.png','assets/image/off_18.png','assets/image/off_19.png','assets/image/off_20.png','assets/image/off_21.png','assets/image/off_22.png','assets/image/off_23.png',
    'assets/image/off_24.png','assets/image/off_25.png','assets/image/off_26.png','assets/image/off_27.png','assets/image/off_28.png','assets/image/off_29.png','assets/image/off_30.png',
    'assets/image/off_31.png','assets/image/off_32.png','assets/image/off_33.png','assets/image/off_34.png','assets/image/off_35.png','assets/image/off_36.png','assets/image/off_37.png',
    'assets/image/off_38.png','assets/image/off_39.png','assets/image/off_40.png','assets/image/off_41.png','assets/image/off_42.png','assets/image/off_43.png','assets/image/off_44.png',
    'assets/image/off_45.png' ];

  var imgPath = '';

    @override



  Widget build(BuildContext context) {
      //choice_Bunho.clear();
    return ListView(
      children: [
        Column(
          children: [
            Center( //로또번호 표시 존
              child: Container(
                  height: 400,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 50,
                  color: Colors.grey[400],
                  alignment: Alignment.center,
                  child:
                  //const Text('로또번호 표시 존', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[1] = bunHo_Check(1);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[1], fit: BoxFit.none,),
                          ),//1

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[2] = bunHo_Check(2);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[2], fit: BoxFit.none,),
                          ),//2

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[3] = bunHo_Check(3);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[3], fit: BoxFit.none,),
                          ),//3

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[4] = bunHo_Check(4);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[4], fit: BoxFit.none,),
                          ),//4

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[5] = bunHo_Check(5);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[5], fit: BoxFit.none,),
                          ),//5

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[6] = bunHo_Check(6);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[6], fit: BoxFit.none,),
                          ),//6

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[7] = bunHo_Check(7);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[7], fit: BoxFit.none,),
                          ),//7
                        ],
                      ),

                      SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[8] = bunHo_Check(8);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[8], fit: BoxFit.none,),
                          ),//8

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[9] = bunHo_Check(9);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[9], fit: BoxFit.none,),
                          ),//9

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[10] = bunHo_Check(10);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[10], fit: BoxFit.none,),
                          ),//10

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[11] = bunHo_Check(11);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[11], fit: BoxFit.none,),
                          ),//11

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[12] = bunHo_Check(12);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[12], fit: BoxFit.none,),
                          ),//12

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[13] = bunHo_Check(13);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[13], fit: BoxFit.none,),
                          ),//13

                          InkWell(
                            onTap: () {
                              setState(() {
                                bunHoPath[14] = bunHo_Check(14);
                              });
                            },
                            child: Image.asset(
                              bunHoPath[14], fit: BoxFit.none,),
                          ),//14
                        ],
                      ),

                    ],
                  )

              ),
            ),

            SizedBox(height: 25,),

            Center( //선택된 로또번호와 조회버튼
              child: Container(
                height: 50,
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 50,
                color: Colors.grey[800],
                alignment: Alignment.center,
                child: //const Text('선택된 로또번호', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[0].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 30,
                          width: 50,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text(choice_Bunho[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.white),  ),
                        ),
                      ],
                    ),


              ),
            ),

            SizedBox(height: 25,),

            Text(bunhoSangtae.toString()),
            Text(choice_Bunho.toString()),

            Center( //결과값 표시 존
              child: Container(
                  height: 600,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 50,
                  color: Colors.grey[100],
                  alignment: Alignment.center,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('등수')),
                      DataColumn(label: Text('당첨횟수')),
                      DataColumn(label: Text('회차')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1등')),
                        DataCell(Text('0')),
                        DataCell(Text(' ')),
                      ]),

                      DataRow(cells: [
                        DataCell(Text('2등')),
                        DataCell(Text('1')),
                        DataCell(Text('253,100,101,102,103,104')),
                      ]),

                      DataRow(cells: [
                        DataCell(Text('3등')),
                        DataCell(Text('1')),
                        DataCell(Text('253,100,101,102,103,104')),
                      ]),

                      DataRow(cells: [
                        DataCell(Text('4등')),
                        DataCell(Text('1')),
                        DataCell(Container(
                            width: 250,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      strutStyle: StrutStyle(fontSize: 16.0),
                                      text: TextSpan(
                                          text:
                                          '253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879끝',
                                          style: TextStyle(
                                              color: Colors.black,
                                              height: 1.4,
                                              fontSize: 16.0,
                                              fontFamily: 'NanumSquareRegular')),
                                    )),
                              ],
                            )),
                        ),
                      ]),

                      DataRow(cells: [
                        DataCell(Text('5등')),
                        DataCell(Text('1')),
                        DataCell(Text('253,100,101,102,103,104')),
                      ]),

                    ],
                  )

              ),
            ),

            Container(
                width: 550,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          strutStyle: StrutStyle(fontSize: 16.0),
                          text: TextSpan(
                              text:
                              '253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879,253,100,101,102,103,104,105,1000,1001,879끝',
                              style: TextStyle(
                                  color: Colors.black,
                                  height: 1.4,
                                  fontSize: 16.0,
                                  fontFamily: 'NanumSquareRegular')),
                        )),
                  ],
                )),


          ],
        ),
      ],
    );
  }

  bunHo_Check(int bunho) {
    var bunho_gubun;
    var return_Path;
    if (bunhoSangtae[bunho] == 1) {
      ii--;
      bunho_gubun = 'off';
      bunhoSangtae[bunho]=0;

      choice_Bunho[choice_Bunho.indexOf(bunho)]=46;



    }

    else {
      bunho_gubun = 'on';
      bunhoSangtae[bunho]=1;
      choice_Bunho[ii]=bunho;
      ii++;


    }
    return_Path =
        'assets/image/' + bunho_gubun + '_' + bunho.toString() + '.png';

    //print(ii);
    if(choice_Bunho.length > 0)
       {choice_Bunho.sort();}

    return return_Path;
  }

}