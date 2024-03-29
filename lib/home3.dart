import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'lottovar.dart';
//import 'lottoad.dart';






class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  void initState(){
    //showInterstitialAd();  //에드몹 전면광고테스트
    super.initState();
  }

  @override
  void dispose() {

    //print('depose');
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return

      ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            //color: Colors.red,
            alignment: Alignment.center,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WebViewX(  //파이어베이스 애드핏
                    width: 380,
                    height: 70,
                    initialContent: '<ins class="kakao_ad_area" style="display:none;"  data-ad-unit = "DAN-QUoyeFZomUFBedbD"  data-ad-width = "320"  data-ad-height = "50"></ins>  <script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js" async></script>',
                    initialSourceType: SourceType.html
                ),



                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(  //버튼
                      onTap: (){


                      },
                      child:
                      Container(
                        width: disWidthSize*0.4,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text('꿈 과  로 또', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size*1.3, fontWeight: FontWeight.bold,  color: Colors.black),),
                      ),
                    ),

                    SizedBox(width: 50,),

                    SizedBox(

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: disWidthSize*0.3,
                              height: 40,
                              child: TextField(
                                  textAlign: TextAlign.center,
                                  maxLength: 5,
                                  controller: searchController,

                                  decoration: InputDecoration(

                                      border: OutlineInputBorder(),
                                      labelText: '검색',
                                      hintText: '(5글자이내)',
                                      // label:  const Center(
                                      //   child: Text("검색"),
                                      // ),
                                      alignLabelWithHint: true,
                                      counterText:'',
                                      contentPadding: EdgeInsets.all(3)

                                  )
                              ),
                            ),

                            SizedBox(
                              // width: disWidthSize*0.2,
                              height: 40,
                              //alignment: Alignment.center,
                              child: IconButton(
                                icon: Icon(Icons.search),
                                color: Colors.black,
                                iconSize: 30.0,
                                onPressed: () {

                                  searchTxt=searchController.text.replaceAll(' ', '');
                                  searchTxt=searchTxt.replaceAll(',', '');
                                  FocusManager.instance.primaryFocus?.unfocus();

                                  if(searchTxt==''){
                                    lottoToast('검색어를 입력해주세요.\n공백과 ,는 제외됩니다.',context);

                                  }
                                  else {
                                    searchResult='';
                                    if (searchTxt != '')
                                      for (var kk in lottoDream.keys)
                                        if ((lottoDream[kk].toString()).contains(
                                            searchTxt))
                                          searchResult = searchResult + kk + '번,';


                                    setState(() {

                                      if(searchTxt!='')
                                        lottoToast('"'+searchTxt+'" 조회 완료',context);

                                      if(searchResult=='')
                                        searchResult='검색결과가 없습니다.';

                                    });
                                  } //else

                                },
                              ),
                            ),
                          ],
                        )
                    ),







                  ],
                ),



                SizedBox(height: 15,),

                Container(
                  width: disWidthSize*0.98,
                  //height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 2
                      )
                  ),
                  alignment: Alignment.center, // Container(
                  //   width: 2,
                  //   height: conHeight*0.9,
                  //   color:Colors.red,
                  // ),

                  child:
                  Column(
                    children: [

                      if(searchResult!='')  //검색결과가 있으면 표시
                        Center(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container( alignment : Alignment.topLeft,
                                    child:Text('검색결과 : ', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),),),

                                  Flexible(
                                    child: Container( alignment : Alignment.centerLeft,
                                      child:Text(searchResult, style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold, color: Colors.deepOrange ),),),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              SizedBox(
                                child: Text('※ 검색결과는 해당번호의 상징에 붉은색으로 표시 되었음', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold, color: Colors.blue),),
                              ),
                            ],
                          ),

                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: disWidthSize*0.15, height:conHeight, alignment : Alignment.centerLeft,
                            child:Text('번  호', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),),),



                          Container(width:disWidthSize*0.7, height:conHeight, alignment : Alignment.center,
                              child: Text('상  징', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),)),
                        ],
                      ),

                      // Text.rich(
                      //   TextSpan(
                      //
                      //     children: <TextSpan>[
                      //       TextSpan(text: ' 1', style: TextStyle(fontFamily: 'sandolout',fontSize: font_Size,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                      //
                      //     ],
                      //   ),
                      // ),
                      Divider(thickness: 1, height: 1, color: Colors.black),
                      SizedBox(height: 10,),

                      for (var k in lottoDream.keys)
                        numCall(k),



                    ],
                  ),




                ),

              ],
            ),
          ),
        ],
      );
  }

  numCall(var numK) {

    Color bgColore=Colors.black;

    switch (int.parse(numK)){
      case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10:
      bgColore= Colors.yellow; break;

      case 11: case 12: case 13: case 14: case 15: case 16: case 17: case 18: case 19: case 20:
      bgColore= Colors.lightBlueAccent; break;
      case 21: case 22: case 23: case 24: case 25: case 26: case 27: case 28: case 29: case 30:
      bgColore= Colors.redAccent; break;
      case 31: case 32: case 33: case 34: case 35: case 36: case 37: case 38: case 39: case 40:
      bgColore= Colors.grey; break;
      default: bgColore= Colors.green;

    }


    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: disWidthSize*0.15,
              alignment: Alignment.centerLeft,
              child: Container(

                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color:  bgColore,
                  shape: BoxShape.circle,
                ),
                child:
                Center(child: Text(numK.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold, color: Colors.white  ),)),
              ),//원그리기
            ),

            searchDream(lottoDream[numK], context),



          ],
        ),
        SizedBox(height: 10,),
        Divider(thickness: 1, height: 1, color: Colors.black),
        SizedBox(height: 10,),
      ],

    );
  }
}

searchDream(String sdream, BuildContext context) {

  if(searchTxt=='') {
    return Container(width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
        child: Text(sdream,
          style: TextStyle(fontFamily: 'sandol', fontSize: font_Size * 0.8,),)
    );
  }

  else {
    // return Container(width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
    //     child: Text(sdream,
    //       style: TextStyle(fontFamily: 'sandol', fontSize: font_Size * 0.8,),)
    // );


    final String myString = sdream;

    final wordToStyle = searchTxt;
    final wordStyle = TextStyle(color: Colors.red);
    final leftOverStyle = Theme
        .of(context)
        .textTheme
        .bodyText1
        ?.copyWith(fontSize: font_Size*0.8,fontFamily: 'sandol',);

    final spans = _getSpans(myString, wordToStyle, wordStyle);

    return Flexible(
      child: Container(
        width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
        child: RichText(
          //overflow: TextOverflow.ellipsis,
          text: TextSpan(
            style: leftOverStyle,
            children: spans,
          ),
        ),
      ),
    );

  }
}


List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {

  List<TextSpan> spans = [];
  int spanBoundary = 0;

  do {

    // 전체 String 에서 키워드 검색...
    final startIndex = text.indexOf(matchWord, spanBoundary);

    // 전체 String 에서 해당 키워드가 더 이상 없을때 마지막 KeyWord부터 끝까지의 TextSpan 추가
    if (startIndex == -1) {
      spans.add(TextSpan(text: text.substring(spanBoundary)));
      return spans;
    }

    // 전체 String 사이에서 발견한 키워드들 사이의 text에 대한 textSpan 추가
    if (startIndex > spanBoundary) {
      //print(text.substring(spanBoundary, startIndex));
      spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
    }

    // 검색하고자 했던 키워드에 대한 textSpan 추가.
    final endIndex = startIndex + matchWord.length;
    final spanText = text.substring(startIndex, endIndex);
    spans.add(TextSpan(text: spanText, style: style));

    // mark the boundary to start the next search from
    spanBoundary = endIndex;

    // continue until there are no more matches
  }
  //String 전체 검사
  while (spanBoundary < text.length);

  return spans;
}

Map lottoDream={
  '1':'임금(왕),대통령,태극기,흰머리,할아버지,할머니,갓난아이,지팡이,칫솔,양치질,끈(줄),전봇대,깡패,건달,일본,부처님',
  '2':'비행기,헬기,날다,달리기,마라톤,별,행성,인사,거수경례,빗자루,어머니,얼음,안개,외국인,새장',
  '3': '우산,축구공,풍선,바둑,장기,춤,박쥐,인형,호랑이,표범,왕관,인삼,삼성(기업),장난감,영어,사투리,글씨,글자,삼각자,삼촌',
  '4':'벌레,개미,모기,파리,나비,번데기,오징어,낙지,상어,미역,새우,가재,항구,해수욕장,모래,수족관,폭포,계곡,약수터,지게,국민은행,신호등,다이아몬드,거울',
  '5':'어묵,오뎅,오리,쥐,오리,오곡(콩,조,수수등),5천원권,동굴,수리,장모,조카,외환은행,물기둥,분수,모기장,어린이날',
  '6':'호수,연못,난초,진흙밭,진주,대파,부추,시금치,배추,호스,타이어,바퀴,선배,박물관,도박',
  '7':'산길,말,황금,수건,신용카드,무지개,고가다리,육교,두부,소금,기저귀,무우,교실,네잎클로바,화투',
  '8':'운전,엘리베이터,모자,팔,안경,거미,개구리,두꺼비,거북이,돼지,소,염소,저수지,라면,쌀,저녁식사',
  '9':'신발,짚신,공,테니스,도서관,맨홀뚜껑,연탄,목사,신부님,원숭이,머리손질,대머리,가발',
  '10':'시계,텐트,천막,창고,초가집,한옥집,고향집,지하실,물이세다,물이차오르다,빨간고무다라이,닭,치킨,도시락',
  '11':'철길,내리는비,후배,쌍둥이아기,젓가락,양초,유치원생,축구선수,골키퍼,도둑,슬리퍼(샌들),누워있다',
  '12':'고양이,숯,산속(야산),비탈길,댐,가위,아이를안고,빈병,다리미,후레쉬,렌턴,돼지고기',
  '13':'표지판,이정표,팬티,속옷,브레지어,성기,정액,황소,영구차,장례식,상가집,묘,공동묘지,앞치마,달걀,된장,청국장,농협',
  '14':'자동차,봉고차,카센터,구름,감,홍시,곶감,만두,맨발,양말,화장실,변기,매춘부,아기를업고,먼지',
  '15':'피,싸움,도끼,농기구,경운기,정비,준장(계급),소변누다,동상,벽돌,체조,헬스,운동경기,스포츠,탁구,화내다',
  '16':'책,성경책,노트,시험,서류,책꽂이,휴지,상자,박스,포대,자루,씨앗,김,승차권,여권,옥매트,방석,의자,벤치,부엌',
  '17':'사탕,빨래,이불,절하다,탑,스님,절(사찰),멸치,생선,물고기,낚시,양식장,문신,넥타이,이불,담요,생리대,치약',
  '18':'사진,아버지,선생님,교수,장인,회사사장,오토바이,썰매,스키,스케이트,인라인,공사장,콩나물,마시는차,국회의원,많은사람,군용짚차,옷가게',
  '19':'소방차,소방대원,불,라이타,가게,슈퍼,매장,커피숍,고추장,석류,사과,버섯,일기,연필,볼펜,필기구,저금통,거짓말',
  '20':'남편,책가방,놀이터,귤,오렌지,감자,고구마,늙은호박,피자,성냥,찜질방,사우나,담배,원피스,오리알',
  '21':'지도,약도,설거지,청소,청소부,환경미화원,커피,식권,고래,박수,손,손가락,손톱,토끼,울타리',
  '22':'뱀,경찰서,경찰차,경비실,고소,수갑,감옥,간첩,북한군,비닐봉지,도배,시멘트,잠자리,법원,토마토,외계인,우주선,미로,공항',
  '23':'핸드폰,카메라,오락실,컴퓨터,인터넷,라디오,레코드판,내리는눈,천둥,번개,세숫대야,전기밥솥,피아노,전화통화,증권,돌,자갈,케이블카',
  '24':'술,와인,음료수,이사,트럭,버스정류장,노래방,현수막,골목길,직장동료,바이올린,龍(용),보름달,미꾸라지',
  '25':'결혼,애인,연인,섹스,친구,꽃,코스모스,해바라기,벌,소장,흙탕물,백열전구,과녘,표적,에프킬라',
  '26':'배(바다),변(똥),풀,풀밭,목장,숲속,바늘,언덕,화분,잠옷,건물옥상,키스,잔치,마이크',
  '27':'긴머리,여관,모텔,아파트,돈을줍다,수표,돈봉투,동전,현금지급기,양복,회사유니폼,형광등,양주,마늘',
  '28':'반지,목걸이,악세서리,다이아몬드,보석,패물,상장,냉면,거북선,건전지,밧데리,지렁이',
  '29':'쇠,철,철사,못,연장,자석,가마솥,골프,골프채,활,국자,수세미,로보트,활,폭발,방앗간',
  '30':'가방,지갑,여행,솥,냄비,그릇,접시,열쇠,텔레비젼,전자렌지,에어컨,선풍기,풍차,대학강의실',
  '31':'커턴,신분증,주민등록증,면도기,연설,강연,세미나,발표,사슴뿔,기린,볏짚단,두엄,소죽',
  '32':'공원,논,밭,벼,모종,묘목,새싹,식물원,장난감,단추,푸른호박,푸른고추,가지,오이,더덕,손톱깎기',
  '33':'산삼,개,멧돼지,꿩,대성통곡,교복,경비원,바위,지진,유흥가,난로,용광로,석유,기름,새우젓,지진,태풍,체인,전기줄,리모콘',
  '34':'연예인,가수,공연,쇼,극장,영화관,드라마,뉴스,방송국,기자,정치인,전직장관,높은파도',
  '35':'칼,총,몽둥이,폭탄,전쟁,군인,군복,갑옷,예비군훈련,경찰,검문,단속,중장,군함,비디오테입,생선회',
  '36':'버스,돈,돈다발,지폐,통장,복권,상품권,하수구,왕비,울음,백화점,가오리,비료,탈의실',
  '37':'반짝이는빛,불빛,조명,가로등,후레쉬,주사,이발,이발사,미용사,미용실,포도,구두솔',
  '38':'목욕탕,냉장고,침대,쇼파,대문,장농,자장면,검사,변호사,궁전,주차장,포장마차,앨범,고양이,맑은물',
  '39':'찌게,대추,식당,국수,죽,향수,화장,밥,초밥,비빔밥,김치,생선구이,식혜,빵,케익,떡,아이스크림,전시회,모임,회의,파출부',
  '40':'병원,치과,의사,장애인,도망,식용유,대학교,털,나체,쓰레기통,가마니,교통사고,길을헤메다,수박,때타올',
  '41':'교회,간호사,주유소,무속인,무당,점쟁이,점집,부적,제사,제사상,운동장,머리염색,팽이',
  '42':'새,편지,전철,기차,기차역,인력거,찬송가,종이학,우체국,동사무소,관공서,곰팡이,무전기,시험에합격한꿈',
  '43':'빨래줄,과자,껌,리본,레이스,방충망,놀이공원,사다리,밧줄,짬뽕,큰구렁이,잡채,팝콘,항아리',
  '44':'계단,에스컬레이터,무너지다,점심식사,까마귀,저승사자,바다게,해삼,소라,조개,그룹섹스,호스로물뿌리다',
  '45':'이혼,귀신,유령,영혼,괴물,시체,마스크,복면,헬멧,해녀,벌꿀,로또,복권방,꼬리,메주',
};