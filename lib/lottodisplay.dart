import 'package:flutter/material.dart';
import 'home1.dart';

class LottoDisplay extends StatefulWidget {
  const LottoDisplay({Key? key}) : super(key: key);

  @override
  State<LottoDisplay> createState() => _LottoDisplayState();
}

class _LottoDisplayState extends State<LottoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      //width: MediaQuery.of(context).size.width - 50,
        width: 400,
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
                    bunHoPath[1],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//1

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[2] = bunHo_Check(2);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[2],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//2

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[3] = bunHo_Check(3);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[3],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//3

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[4] = bunHo_Check(4);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[4],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//4

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[5] = bunHo_Check(5);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[5],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//5

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[6] = bunHo_Check(6);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[6],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//6

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[7] = bunHo_Check(7);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[7],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//7
              ],
            ),//1~7번

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
                    bunHoPath[8],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//8

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[9] = bunHo_Check(9);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[9],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//9

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[10] = bunHo_Check(10);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[10],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//10

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[11] = bunHo_Check(11);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[11],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//11

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[12] = bunHo_Check(12);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[12],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//12

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[13] = bunHo_Check(13);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[13],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//13

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[14] = bunHo_Check(14);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[14],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//14
              ],
            ),//8~14번

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[15] = bunHo_Check(15);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[15],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//15

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[16] = bunHo_Check(16);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[16],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//16

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[17] = bunHo_Check(17);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[17],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//17

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[18] = bunHo_Check(18);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[18],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//18

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[19] = bunHo_Check(19);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[19],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//19

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[20] = bunHo_Check(20);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[20],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//20

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[21] = bunHo_Check(21);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[21],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//21
              ],
            ),//15~21번

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[22] = bunHo_Check(22);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[22],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//22

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[23] = bunHo_Check(23);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[23],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//23

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[24] = bunHo_Check(24);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[24],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//24

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[25] = bunHo_Check(25);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[25],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//25

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[26] = bunHo_Check(26);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[26],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//26

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[27] = bunHo_Check(27);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[27],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//27

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[28] = bunHo_Check(28);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[28],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//28
              ],
            ),//22~28번

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[29] = bunHo_Check(29);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[29],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//29

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[30] = bunHo_Check(30);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[30],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//30

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[31] = bunHo_Check(31);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[31],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//31

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[32] = bunHo_Check(32);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[32],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//32

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[33] = bunHo_Check(33);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[33],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//33

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[34] = bunHo_Check(34);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[34],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//34

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[35] = bunHo_Check(35);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[35],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//35
              ],
            ),//29~35번

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[36] = bunHo_Check(36);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[36],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//36

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[37] = bunHo_Check(37);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[37],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//37

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[38] = bunHo_Check(38);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[38],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//38

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[39] = bunHo_Check(39);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[39],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//39

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[40] = bunHo_Check(40);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[40],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//40

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[41] = bunHo_Check(41);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[41],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//41

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[42] = bunHo_Check(42);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[42],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//42
              ],
            ),//26~42번

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[43] = bunHo_Check(43);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[43],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//43

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[44] = bunHo_Check(44);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[44],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//37

                InkWell(
                  onTap: () {
                    setState(() {
                      bunHoPath[45] = bunHo_Check(45);
                    });
                  },
                  child: Image.asset(
                    bunHoPath[45],  width: 18, height:28, fit: BoxFit.scaleDown,),
                ),//45

                Container(width: 18, height: 28,), //46
                Container(width: 18, height: 28,), //47
                Container(width: 18, height: 28,), //48
                Container(width: 18, height: 28,), //49


              ],
            ),//43~45번

            SizedBox(height: 15,),

          ],
        )

    );
  }

  bunHo_Check(int bunho) {
    var bunho_gubun;
    var return_Path;
    var mTemp=0;



    if (bunhoSangtae[bunho] == 1) {

      bunho_gubun = 'off';
      bunhoSangtae[bunho]=0;

      var tempBunho=bunho.toString();


      var tem1=choice_Bunho.indexOf(tempBunho);
      //print(tem1);

      choice_Bunho[choice_Bunho.indexOf(tempBunho).toInt()]='46';
      choice_Bunho_Int[tem1]=46;

      //print(choice_Bunho[tem1]);

      ii--;
      mTemp=1;



    }

    else {
      if(ii==6) {
        //print('assets/image/off' + '_' + bunho.toString() + '.png');
        return 'assets/image/off' + '_' + bunho.toString() + '.png';
      }
      bunho_gubun = 'on';
      bunhoSangtae[bunho]=1;
      choice_Bunho[ii]=bunho.toString();
      ii++;
      mTemp=0;


    }
    return_Path =
        'assets/image/' + bunho_gubun + '_' + bunho.toString() + '.png';

    //print(ii);
    if(ii > 0)
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

    return return_Path;
  }

}
