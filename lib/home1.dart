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
}
