import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'models/order_form.dart';

class NewSwanstoneCastleTicketPage extends StatefulWidget {
  @override
  _NewSwanstoneCastleTicketPageState createState() =>
      _NewSwanstoneCastleTicketPageState();
}

class _NewSwanstoneCastleTicketPageState
    extends State<NewSwanstoneCastleTicketPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _buyerGivenNameController = TextEditingController();
    final _buyerSurnameNameController = TextEditingController();
    final _buyerEmailController = TextEditingController();

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
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: Color.fromRGBO(241, 241, 241, 1),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '姓氏',
                                  ),
                                  controller: _buyerSurnameNameController,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color:
                                      Color.fromRGBO(189, 189, 189, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: Color.fromRGBO(241, 241, 241, 1),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '名字',
                                  ),
                                  controller: _buyerGivenNameController,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color:
                                      Color.fromRGBO(189, 189, 189, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 16,
                                      letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
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
                        child: TextField(
                          controller: _buyerEmailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
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
                        onTap: () async {
                          context.push("/payment",
                              extra: OrderForm(
                                givenName: _buyerGivenNameController.text,
                                surname: _buyerSurnameNameController.text,
                                email: _buyerEmailController.text,
                              ));
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
