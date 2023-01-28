import 'dart:async';
import 'dart:js';

import 'package:fluttertoast/fluttertoast.dart';
//import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx/webviewx.dart';


//import 'lottoad.dart';



class MyScore{
  int numLotto;
  int countLotto;

  MyScore(this.numLotto, this.countLotto);

  String toString(){
    return '{ ${this.numLotto}, ${this.countLotto}}';
  }
}

int heartCount=0;

final searchController = TextEditingController();
var searchTxt='';
var searchResult='';

var num2 = List.empty(growable: true);
var ii=0;

//var choice_Bunho=List<int>.filled(6, 46);
var choice_Bunho=List<String>.filled(6, ' ');
var choice_Bunho_Int=List<int>.filled(6, 46);
var choiceColors=List<Color>.filled(6,Colors.black);
List<MyScore> resultBunho=[];

var tonggyeCount=List<int>.filled(46, 0);

var num=List.generate(2000,(i) => List.filled(8, 0, growable: true), growable:true);
int last_soonbun=0;
//int last_soonbun=6;
List<int> dangchum_Count=[0,0,0,0,0,0];
List<String> dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
var conHeight=45.0;  //숫자한개 컨테이너 높이
var conWidth=40.0; //숫자한개 컨테이너 넓이
var conbgColor='white';

double disWidthSize=420; //화면 사이즈
double sizeboxWidth=16;
double cspace=0;
double sespace=0;
double font_Size=22;


int resultSangtae=0;

int naonCount=0;  //함께 출현한 수에서 선택한 번호가 출현한 횟수
String naonTotal=''; //함께 출현한 수 처리시, 선택한 번호묶어서 표시하기 위함

// List<int> dangchum3=[0];
// List<int> dangchum4=[0];
// List<int> dangchum5=[0]; //배열로 이용

var hiveBox;

void heart_count(BuildContext context) async{


  heartCount--;
  if (heartCount <= 0) {
    //showRewardedAd();  //리워드전면광고 불러오기
    //showInterstitialAd();  //에드몹 전면광고로 리워드 광고 대체
    //lottoToast('하트 충전이 필요합니다.',context);

    //heartcharge(context);

    heartCount=6;
    hiveBox.put('heart', heartCount);

  }

   else {
     hiveBox.put('heart', heartCount);
  //   //print(heartCount.toString());
   }
}



void lottoToast(String jmt_message,BuildContext context) {
  // Fluttertoast.showToast(msg: jmt_message,
  //   gravity: ToastGravity.CENTER,
  //   backgroundColor: Colors.black,
  //   fontSize: 20.0,
  //   textColor: Colors.white,
  //   timeInSecForIosWeb: 1,
  //   toastLength: Toast.LENGTH_SHORT,

  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
//Dialog안에 setState를 적용하려면 StateFulbuilder를 꼭 적용해야 한다.

        Future.delayed(Duration(seconds: 1), () {
          Navigator.pop(context);
        });

    return AlertDialog(
        shape: RoundedRectangleBorder(
          //팝업창에 radius를 주기위한 옵션
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        contentPadding: EdgeInsets.only(top: 0),
        //default 패딩값을 없앨 수 있다.
        content:Container(
          height: 50,
          child: Center(
                        child: Center(
            child: Text(jmt_message, style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
        ),
          ),
        )
  );}));
} //토스트메시지 띄우기

void lottoToast2(BuildContext context) {
  // Fluttertoast.showToast(msg: jmt_message,
  //   gravity: ToastGravity.CENTER,
  //   backgroundColor: Colors.black,
  //   fontSize: 20.0,
  //   textColor: Colors.white,
  //   timeInSecForIosWeb: 1,
  //   toastLength: Toast.LENGTH_SHORT,

  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
//Dialog안에 setState를 적용하려면 StateFulbuilder를 꼭 적용해야 한다.

        // Future.delayed(Duration(seconds: 3), () {
        //   Navigator.pop(context);
        // }
        // );

        return AlertDialog(
            shape: RoundedRectangleBorder(
              //팝업창에 radius를 주기위한 옵션
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 0, left: 5,),
            //default 패딩값을 없앨 수 있다.
            content:Container(
              width: disWidthSize,
              height: 850,
              child: Center(
                child:
                ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text('<로만살이란?>', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),

                        SizedBox(height: 15,),
                        Text('1. 앱 설명', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        SizedBox(height: 15,),
                        FittedBox(
                          child: Text('  - 지금까지의 로또 1등 당첨 번호 통계를 위한 앱입니다.\n\n'
                              '  - 내가 좋아하는 로또번호를 대입하여 지금까지 당첨된 기록을 조회하거나\n\n'
                              '  - 특정 번호와 그동안 함께 출현한 숫자들의 통계를 조회하기도 하고\n\n'
                              ' - 특정 번호 출현 후 그 다음주에 나온 번호 통계 등을 조회할 수 있습니다.\n\n'
                              ' - 꿈에서 나온 상징에 해당하는 번호를 조회할 수도 있지만,\n'
                              '     아무런 과학적인 근거가 없는 내용으로 그냥 재미로 보시면 됩니다.', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        ),

                        SizedBox(height: 25,),
                        Text('2. 로만살의 개인정보 보호정책은?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        SizedBox(height: 15,),
                        FittedBox(
                          child: Text('  - 로만살은 어떠한 개인정보를 요구하지도 저장하지도 않습니다.\n\n'
                              '  - 자세한 개인정보보호정책은\n'
                            '     하단 "개인정보보호정책" 메뉴를 통하여 확인하시기 바랍니다.'

                            , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        ),

                        // ElevatedButton(
                        //   child: Text(
                        //     '   https://lotto.2thekey.com/privacy.html 을 참고하시면 됩니다.'
                        //     , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        //   onPressed: () async {
                        //     final url = Uri.parse(
                        //       'https://lotto.2thekey.com/privacy.html',
                        //     );
                        //   },
                        // ),

                        SizedBox(height: 25,),
                        Text('3. 로또 분석 앱인가요?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        SizedBox(height: 15,),
                        FittedBox(
                          child: Text('  - 아닙니다. 하지만 당첨 번호 통계를 내다보니\n'
                              '     뜻하지 않게 분석이 되긴 합니다만, 그 분석이라는 것도\n'
                              '     지금까지의 출현한 당첨번호의 통계에 의해 확률적으로\n'
                              '     많이 출현했던 번호의 조합이라고 할 수 있습니다.\n\n'
                              '  - 통계에 의한 확률이라고는 하지만 아주 미미한 수준의\n'
                              '     정확도를 가지고 있습니다.'
                            , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        ),

                        SizedBox(height: 25,),
                        Text('4. 왜 만들었나요?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        SizedBox(height: 15,),
                        FittedBox(
                          child: Text('  - 로또 분석은 의미가 없다고 생각합니다.\n\n'
                              '  - 각 회차별로 독립실행을 하기때문이지만,\n'
                              '     어차피 구입할꺼면 1,2,3,4,5,6 보다는\n'
                              '     좀 더 그럴싸한 번호를 구입하고 싶어서 만들었습니다.'
                            , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        ),

                        SizedBox(height: 25,),
                        Text('5. 앱에 대해 건의하실 사항은?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                        SizedBox(height: 15,),
                        FittedBox(
                          child: Text('  - 2thekey.01@gmail.com 으로\n'
                              '     의견 보내 주시면 반영토록 노력하겠습니다.\n'
                            , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
                        ),

                        WebViewX( //lotto.naepo 애드핏
                            width: 380,
                            height: 120,
                            initialContent: '<ins class="kakao_ad_area" style="display:none;"  data-ad-unit = "DAN-d3WQ21d4nsWDCLEI"  data-ad-width = "320"  data-ad-height = "100"></ins>  <script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js" async></script>',
                            initialSourceType: SourceType.html
                        ),




                      ],
                    ),
                  ],
                ),

              ),
              ),
          actions: <Widget>[
            new ElevatedButton(
              child: new Text("확인"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
            );
        }  //builder
        )
  );
} //토스트메시지 띄우기


void heartcharge(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
      //Dialog안에 setState를 적용하려면 StateFulbuilder를 꼭 적용해야 한다.

        return AlertDialog(
          shape: RoundedRectangleBorder(
            //팝업창에 radius를 주기위한 옵션
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 0, left: 5,),
          //default 패딩값을 없앨 수 있다.
          content:Container(
            width: disWidthSize,
            height: 100,
            alignment: Alignment.center,
            child: Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15,),
                  Text('♥ 충전이 필요합니다.\n\n확인 버튼을 누르면 쿠팡페이지 방문후 충전됩니다.', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size-2, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                ],
              ),

            ),
          ),
          actions: <Widget>[
            Center(
              child: new ElevatedButton(
                child: new Text("확인"),
                onPressed: () {
                 url_link();

                  Timer(const Duration(seconds: 2),(){
                    //Get.offAll(const MainPage());
                    Navigator.pop(context);
                    lottoToast_button('♥ 충전완료 X 7', context);
                    heartCount=7;
                  });


                },
              ),
            ),
          ],
        );
      }  //builder
      )
  );
} //하트충전 띄우기


url_link() async{

  const url = 'https://link.coupang.com/a/MERGJ?img%20src=%22https://ads-partners.coupang.com/banners/632747?subId=&traceId=V0-301-879dd1202e5c73b2-I632747&w=320&h=50%22';
 // const url = '<script src="https://ads-partners.coupang.com/g.js"></script><script>new PartnersCoupang.G({"id":633524,"template":"carousel","trackingCode":"AF7493713","width":"400","height":"120"});</script>';


  //html.window.open(url, 'new tab');

  await js.context.callMethod('open', [url]);



  // if (await canLaunch(url)) {
  //   await launch(url,forceWebView: true, forceSafariVC: true,);
  // } else {
  //   throw 'Could not launch $url';
  // }

}

void lottoToast_button(String jmt_message, BuildContext context) {
  // Fluttertoast.showToast(msg: jmt_message,
  //   gravity: ToastGravity.CENTER,
  //   backgroundColor: Colors.black,
  //   fontSize: 20.0,
  //   textColor: Colors.white,
  //   timeInSecForIosWeb: 1,
  //   toastLength: Toast.LENGTH_SHORT,

  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
//Dialog안에 setState를 적용하려면 StateFulbuilder를 꼭 적용해야 한다.

        // Future.delayed(Duration(seconds: 3), () {
        //   Navigator.pop(context);
        // }
        // );

        return AlertDialog(
          shape: RoundedRectangleBorder(
            //팝업창에 radius를 주기위한 옵션
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 0, left: 5,),
          //default 패딩값을 없앨 수 있다.
          content:Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            child: Center(
              child:
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Text(jmt_message, style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size-2, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),

                  ],
                ),
              ),

            ),
          ),
          actions: <Widget>[
            Center(
              child: new ElevatedButton(
                child: new Text("확인"),
                onPressed: () {

                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      }  //builder
      )
  );
}