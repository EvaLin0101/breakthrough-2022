import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_example/.env.dart';
import 'package:stripe_example/screens/card_payments/no_webhook_payment_screen.dart';
import 'api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TMove(),
    );
  }
}

class TMove extends StatefulWidget {
  @override
  _TMove createState() => _TMove();
}

class _TMove extends State<TMove> {
  @override
  void initState() {
    super.initState();
  }

  orderTicket() {
    // var client  =  GrailApiClient(httpClient: http.Client(), baseUrl: "http://alpha.api.g2rail.com", apiKey: "fa656e6b99d64f309d72d6a8e7284953", secret: "9a52b1f7-7c96-4305-8569-1016a55048bc");
    // var asyncKey = client.getSolutions("BERLIN", "FRANKFURT", "2022-10-30", "10:00", 1, 0);
    // print(asyncKey);
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => NoWebhookPaymentScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepageWidget - FRAME - VERTICAL
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(96, 182, 172, 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'T Move',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 30,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '新天鵝堡門票 x 1 : €200',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(97, 183, 172, 1),
                            fontFamily: 'Inter',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                      SizedBox(height: 12),
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
                            color: Color.fromRGBO(241, 241, 241, 1),
                          ),
                          child: Stack(children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '訂購人名稱',
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                            // Positioned(
                            //     top: 16,
                            //     left: 16,
                            //     child: Text(
                            //       '訂購人名稱',
                            //       textAlign: TextAlign.left,
                            //       style: TextStyle(
                            //           color: Color.fromRGBO(189, 189, 189, 1),
                            //           fontFamily: 'Inter',
                            //           fontSize: 16,
                            //           letterSpacing:
                            //               0 /*percentages not used in flutter. defaulting to zero*/,
                            //           fontWeight: FontWeight.normal,
                            //           height: 1),
                            //     )),
                            Positioned(
                                top: 16,
                                left: 284,
                                child: Text(
                                  '',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(93, 176, 116, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ])),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '注意事項',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 20,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                            SizedBox(height: 21),
                            Text(
                              '新天鵝堡門票，一次限購一張，多張訂票請多次申請。\n\n'
                              '本次訂購為24hr內最接近的場次，確切場次，請查詢信件上的時間。\n\n'
                              '下訂後不接受退票。購票成功後會發送電子票券到您的信箱。\n\n'
                              '如有任何票券疑問，請撥打 :(+91-11) 4607-7777',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                        onTap: orderTicket,
                        child: Text(
                          '立即購買車票',
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
    ));
  }
}

final exampleAppTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Color(0xff61b7ac),
    secondary: Color(0xff61b7ac),
  ),
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(elevation: 1),
);
