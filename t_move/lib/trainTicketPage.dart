import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_example/.env.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stripe_example/screens/card_payments/no_webhook_payment_screen.dart';
import 'package:stripe_example/tAndC.dart';



class trainTicketPage extends StatefulWidget {
  @override
  _trainTicketPage createState() => _trainTicketPage();
}

class _trainTicketPage extends State<trainTicketPage>
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[Container(
            decoration: BoxDecoration(
              color : Color.fromRGBO(97, 183, 172, 1),
              border : Border.all(
                color: Color.fromRGBO(0, 0, 0, 1),
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Transform.rotate(
                  angle: 0,
                  child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Asset131.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  ),
                ), SizedBox(width : 12),
                Text('T Move',
                  textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 30,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),

              ],
            ),
          ), SizedBox(height : 0),
            Container(
                width: 379,
                height: 120,
                decoration: BoxDecoration(
                  image : DecorationImage(
                      image: AssetImage('assets/images/Image1.png'),
                      fit: BoxFit.fitWidth
                  ),
                )
            ), SizedBox(height : 0),
            Container(
              decoration: BoxDecoration(
                color : Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,

                children: <Widget>[Container(
                  decoration: BoxDecoration(

                  ),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,

                    children: <Widget>[Container(
                        width: 83,
                        height: 69,
                        decoration: BoxDecoration(
                          image : DecorationImage(
                              image: AssetImage('assets/images/Tica_0222.png'),
                              fit: BoxFit.fitWidth
                          ),
                        )
                    ), SizedBox(height : 12),
                      Text('新天鵝套票 x 1 : €200', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(97, 183, 172, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),), SizedBox(height : 12),
                      Text('車票(慕尼黑>菲森)+ 門票 x 1 ', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(40, 75, 99, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),), SizedBox(height : 12),
                      Container(
                          width: 303,
                          height: 50,
                          decoration: BoxDecoration(
                            color : Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(
                              children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: SvgPicture.asset(
                                        'assets/images/bg.svg',
                                        semanticsLabel: 'bg'
                                    )
                                ),Positioned(
                                    top: 2,
                                    left: 2,
                                    child: SvgPicture.asset(
                                        'assets/images/bg.svg',
                                        semanticsLabel: 'bg'
                                    )
                                ),Positioned(
                                    top: 16,
                                    left: 219,
                                    child: Text('女性', textAlign: TextAlign.center, style: TextStyle(
                                        color: Color.fromRGBO(189, 189, 189, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),)
                                ),Positioned(
                                    top: 16,
                                    left: 52,
                                    child: Text('男性', textAlign: TextAlign.center, style: TextStyle(
                                        color: Color.fromRGBO(40, 75, 99, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),)
                                ),
                              ]
                          )
                      ), SizedBox(height : 12),
                      Container(
                        decoration: BoxDecoration(

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,

                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(241, 241, 241, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,

                                children: <Widget>[
                                  Text('訂購人姓', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(189, 189, 189, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),), SizedBox(width : 10),
                                  Text('', textAlign: TextAlign.right, style: TextStyle(
                                      color: Color.fromRGBO(93, 176, 116, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            ), SizedBox(width : 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(241, 241, 241, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text('訂購人名', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(189, 189, 189, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),), SizedBox(width : 20),
                                  Text('', textAlign: TextAlign.right, style: TextStyle(
                                      color: Color.fromRGBO(93, 176, 116, 1),
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
                      ), SizedBox(height : 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color : Color.fromRGBO(241, 241, 241, 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,

                          children: <Widget>[
                            Text('生日', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),), SizedBox(width : 10),
                            Text('', textAlign: TextAlign.right, style: TextStyle(
                                color: Color.fromRGBO(93, 176, 116, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ), SizedBox(height : 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color : Color.fromRGBO(241, 241, 241, 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,

                          children: <Widget>[
                            Text('護照號碼', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),), SizedBox(width : 10),
                            Text('', textAlign: TextAlign.right, style: TextStyle(
                                color: Color.fromRGBO(93, 176, 116, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ), SizedBox(height : 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color : Color.fromRGBO(241, 241, 241, 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,

                          children: <Widget>[
                            Text('Email', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),), SizedBox(width : 10),
                            Text('', textAlign: TextAlign.right, style: TextStyle(
                                color: Color.fromRGBO(93, 176, 116, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ), SizedBox(height : 12),
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
                      color : Color.fromRGBO(252, 133, 115, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,

                      children: <Widget>[GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => tAndC()));
                        },
                        child: Text('詳情請見T&C', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Inter',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ),
                      ],
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                      color: Color.fromRGBO(252, 133, 115, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => NoWebhookPaymentScreen()),
                            )
                          },
                          child: Text(
                            '立即訂票',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
