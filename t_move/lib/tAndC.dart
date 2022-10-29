import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_example/.env.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stripe_example/screens/card_payments/no_webhook_payment_screen.dart';



class tAndC extends StatefulWidget {
  @override
  _tAndC createState() => _tAndC();
}

class _tAndC extends State<tAndC>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepageWidget - FRAME - VERTICAL
    return Container(
      decoration: BoxDecoration(

      ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[Container(
      decoration: BoxDecoration(
          color : Color.fromRGBO(96, 182, 172, 1),
    ),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Row(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[
    Container(
    decoration: BoxDecoration(

    ),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: Row(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[
    Transform.rotate(
    angle: 1,
    child: Container(
    width: 27,
    height: 27,
    decoration: BoxDecoration(

    )
    ),
    ), SizedBox(width : 12),
    Transform.rotate(
    angle: 1,
    child: Container(
    width: 24,
    height: 24,
    decoration: BoxDecoration(
    image : DecorationImage(
    image: AssetImage('assets/images/Asset132.png'),
    fit: BoxFit.fitWidth
    ),
    )
    ),
    ), SizedBox(width : 12),
    Text('T Move', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Inter',
    fontSize: 30,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),),

    ],
    ),
    ),

    ],
    ),
    ), SizedBox(height : 0),
    Container(
    decoration: BoxDecoration(
    color : Color.fromRGBO(255, 255, 255, 1),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: Column(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[Container(
    decoration: BoxDecoration(

    ),
    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
    child: Column(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[Container(
    decoration: BoxDecoration(

    ),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 24),
    child: Column(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[Text('訂票注意事項', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Inter',
    fontSize: 20,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),), SizedBox(height : 21),
    Text('新天鵝堡行程套票 €200：新天鵝堡門票1張，德鐵車票1張 (慕尼黑中央車站 到  菲森車站)\n\n '
        '一次限購一組，多組訂票請多次申請。本次訂購為明日行程，慕尼黑早上8點的車票，新天鵝堡入場時間為下午2點到下午4點。 \n\n '
        '出票時間為行程前一小時Email寄出,請注意你的郵件信箱。\n\n '
        '確切場次與車票，請依據信件上的時間為準。\n\n '
        '下訂後不接受退票。\n\n '
        '購票成功後會發送電子票券到您的信箱。\n\n '
        '如有任何票券疑問，請撥打 (+91-11) 4607-7777。',
      textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(102, 102, 102, 1),
    fontFamily: 'Inter',
    fontSize: 16,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),),
    ],
    ),
    ),
    ],
    ),
    ), SizedBox(height : 10),
    Container(
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(100),
    topRight: Radius.circular(100),
    bottomLeft: Radius.circular(100),
    bottomRight: Radius.circular(100),
    ),
    color : Color.fromRGBO(40, 75, 99, 1),
    ),
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    child: Column(
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[Text('返回訂票', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Inter',
    fontSize: 16,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final exampleAppTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Color(0xff6058F7),
    secondary: Color(0xff6058F7),
  ),
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(elevation: 1),
);
