import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
//import 'lottoad.dart';
import 'lottovar.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return  ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WebViewX( //lotto.naepo 애드핏
                width: 380,
                height: 120,
                initialContent: '<ins class="kakao_ad_area" style="display:none;"  data-ad-unit = "DAN-d3WQ21d4nsWDCLEI"  data-ad-width = "320"  data-ad-height = "100"></ins>  <script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js" async></script>',
                initialSourceType: SourceType.html
            ),
            SizedBox(height: 15,),

            FittedBox(

              child: Text(' <로또만이 살길이다>(이하 "로만살")은\n'
                ' (개인정보 보호법) 제30조에 따라 정보주체의 개인정보를 보호하고\n'
                ' 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여\n'
                ' 다음과 같이 개인정보 처리방침을 수립·공개합니다.\n\n'
                ' ※ 이 개인정보처리방침은 2023년 1월 12일부터 적용됩니다.\n\n'
                ' 제1조(개인정보의 처리 목적)\n'
                ' < 로또만이 살길이다 >(이하 "로만살")은\n'
                ' 개인정보를 일체 수집 및 보유하지 않으며, 이용 목적이 변경되는 경우에는\n'
                ' (개인정보 보호법) 제18조에 따라''별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.\n'
                ' 단, 앱 내에서 제3자가 제공하는 광고플랫폼에 의해 광고 식별자가 수집될 수도 있습니다.\n'
                ' 광고 식별자는 개인을 식별할 수 없고 비영구적이며, 기기의 설정을 변경하여 사용을 거부할 수 있습니다.\n\n'
                ' 1. 회원가입 및 관리\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n'
                ' 2. 민원사무 처리\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n'
                ' 3. 재화 또는 서비스 제공\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n'
                ' 4. 마케팅 및 광고에의 활용\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n'
                ' 5. 개인영상정보\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n'
                ' 6. 기타\n'
                ' "해당없음"-"로만살"은 개인정보를 수집 또는 보관하지 않습니다.\n\n'
                ' 제2조(개인정보의 처리 및 보유 기간)\n'
                ' ①< "로만살" >은 개인정보를 수집 또는 보관하지 않으며 처리할 개인정보를 가지고 있지 않습니다.\n\n'
                ' 제3조(처리하는 개인정보의 항목)\n'
                ' ①< "로만살" >은 개인정보를 수집 또는 보관하지 않으며 처리할 개인정보를 가지고 있지 않습니다.\n\n'
                ' 제4조(개인정보의 제3자 제공에 관한 사항)\n'
                ' ①< "로만살" >은 개인정보를 수집 또는 보관하지 않으며, 제3자에게 제공할 개인정보를 보유하고 있지 않습니다.\n\n'
                ' 제5조(개인정보처리의 위탁에 관한 사항)\n'
                ' ①< "로만살" >은(는) 개인정보를 수집 또는 보유하지 않으므로 개인정보 처리업무를 위탁하고 있지 않습니다.\n'
                ' ②위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.\n\n'
                ' 제6조(개인정보의 파기절차 및 파기방법)\n'
                ' ① < "로만살" > 은 개인정보를 수집 또는 보관하지 않습니다. 파기할 개인정보를 보유하고 있지 않습니다.\n\n'
                ' 제7조(정보주체와 법정대리인의 권리·의무 및 그 행사방법에 관한 사항)\n'
                ' ①< "로만살" >은 개인정보를 수집 또는 보관하지 않으며 처리할 개인정보를 가지고 있지 않습니다.\n\n'
                ' 제8조(개인정보의 안전성 확보조치에 관한 사항)\n'
                ' <"로만살" >은 개인정보를 수집 또는 보관하지 않으며 처리할 개인정보를 가지고 있지 않습니다.\n\n'
                ' 제9조(개인정보를 자동으로 수집하는 장치의 설치·운영 및 그 거부에 관한 사항)\n'
                ' "로만살"은 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용하지 않습니다.\n\n'
                ' 제10조(행태정보의 수집·이용·제공 및 거부 등에 관한 사항)\n'
                ' 행태정보의 수집·이용·제공 및 거부등에 관한 사항\n'
                ' <"로만살">은 온라인 맞춤형 광고 등을 위한 행태정보를 수집·이용·제공하지 않습니다.\n\n'
                ' 제11조(추가적인 이용·제공 판단기준)\n'
                ' "해당없음" - "로만살"은 개인정보를 수집 또는 보관하지 않으며 처리할 개인정보를 가지고 있지 않습니다.\n\n'
                ' 제12조(가명정보를 처리하는 경우 가명정보 처리에 관한 사항)\n'
                ' <"로만살" > 은 가명정보를 처리하고 있지 않습니다.\n\n'
                ' 제13조 (개인정보 보호책임자에 관한 사항)\n'
                ' ①"로만살"은 개인정보 처리에 관한 업무를 총괄해서 책임지고 개인정보 처리와 관련한\n 정보주체의 불만처리 및 피해구제 등을 위하여\n'
                ' 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.\n'
                ' <개인정보 보호책임자>\n'
                ' • 성명 :Satine Kim\n'
                ' • 직책 :개발자\n'
                ' • 연락처 : 2thekey.01@gmail.com \n'
                ,
                style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-4,   color: Colors.black),),
            ),

            SizedBox(height: 5,),
            WebViewX(  //파이어베이스 애드핏
                width: 380,
                height: 70,
                initialContent: '<ins class="kakao_ad_area" style="display:none;"  data-ad-unit = "DAN-QUoyeFZomUFBedbD"  data-ad-width = "320"  data-ad-height = "50"></ins>  <script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js" async></script>',
                initialSourceType: SourceType.html
            ),
            SizedBox(height: 5,),

            FittedBox(
              child: Text(' 제14조(정보주체의 권익침해에 대한 구제방법)\n'
                  ' 정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회,\n 한국인터넷진흥원 개인정보침해신고센터 등에\n'
                  ' 분쟁해결이나 상담 등을 신청할 수 있습니다.\n\n'
                  ' 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.\n'
                  ' 1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)\n'
                  ' 2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)\n'
                  ' 3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr)\n'
                  ' 4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)\n'
                  ' (개인정보보호법)제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제),\n'
                  ' 제37조(개인정보의 처리정지 등)의 규정에 의한\n'
                  ' 요구에 대하여 공공기관의 장이 행한 처분 또는부작위로 인하여 권리 또는 이익의 침해를 받은 자는\n'
                  ' 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.\n\n'
                  ' ※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다.\n\n'
                  ' 제15조(영상정보처리기기 운영·관리에 관한 사항)\n'
                  ' ①<"로만살" >은 영상정보처리기기를 설치·운영하고 있지 않습니다.\n\n'
                  ' 제16조(개인정보 처리방침 변경)\n'
                  ' ① 이 개인정보처리방침은 2023년 1월 12일부터 적용됩니다.\n',
                style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-4,   color: Colors.black),),
            ),













          ],
        ),
      ],
    );
  }
}