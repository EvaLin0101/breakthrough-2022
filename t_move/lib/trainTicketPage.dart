import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:stripe_example/tAndC.dart';

import 'models/order_form.dart';

class TrainTicketPage extends StatefulWidget {
  @override
  _trainTicketPage createState() => _trainTicketPage();
}

class _trainTicketPage extends State<TrainTicketPage> {
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _givenName = TextEditingController();
  final TextEditingController _birthday = TextEditingController();
  final TextEditingController _passportId = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final ValueNotifier<String> _genderValueNotifier = ValueNotifier("M");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepageWidget - FRAME - VERTICAL
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(97, 183, 172, 1),
                  border: Border.all(
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
                            image: DecorationImage(
                                image: AssetImage('assets/images/Asset131.png'),
                                fit: BoxFit.fitWidth),
                          )),
                    ),
                    SizedBox(width: 12),
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
                  width: 379,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Image1.png'),
                        fit: BoxFit.fitWidth),
                  )),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: 83,
                              height: 69,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Tica_0222.png'),
                                    fit: BoxFit.fitWidth),
                              )),
                          SizedBox(height: 12),
                          Text(
                            '新天鵝套票 x 1 : €250',
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
                          Text(
                            '車票(慕尼黑>菲森)+ 門票 x 1 ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(40, 75, 99, 1),
                                fontFamily: 'Inter',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          SizedBox(height: 12),
                          Container(
                              width: 303,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: SvgPicture.asset(
                                        'assets/images/bg.svg',
                                        semanticsLabel: 'bg')),
                                Positioned(
                                    top: 2,
                                    left: 2,
                                    child: SvgPicture.asset(
                                        'assets/images/bg.svg',
                                        semanticsLabel: 'bg')),
                                Positioned(
                                  top: 16,
                                  left: 219,
                                  child: GestureDetector(
                                    onTap: () {
                                      _genderValueNotifier.value = "F";
                                    },
                                    child: ValueListenableBuilder(
                                      valueListenable: _genderValueNotifier,
                                      builder: (context, value, _) => Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: value == "F"
                                              ? Border.all(color: Colors.black)
                                              : Border.all(color: Colors.grey),
                                        ),
                                        child: Text(
                                          '女性',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: _genderValueNotifier.value ==
                                                    "F"
                                                ? Color.fromRGBO(40, 75, 99, 1)
                                                : Color.fromRGBO(
                                                    189, 189, 189, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 16,
                                  left: 52,
                                  child: GestureDetector(
                                    onTap: () {
                                      _genderValueNotifier.value = "M";
                                    },
                                    child: ValueListenableBuilder(
                                        valueListenable: _genderValueNotifier,
                                        builder: (context, value, _) {
                                          return Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: value == "M"
                                                  ? Border.all(
                                                      color: Colors.black)
                                                  : Border.all(
                                                      color: Colors.grey),
                                            ),
                                            child: Text(
                                              '男性',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: value == "M"
                                                    ? Color.fromRGBO(
                                                        40, 75, 99, 1)
                                                    : Color.fromRGBO(
                                                        189, 189, 189, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 16,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1,
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ])),
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
                                      controller: _surname,
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
                                      controller: _givenName,
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
                          SizedBox(height: 12),
                          Container(
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
                                hintText: '生日',
                              ),
                              controller: _birthday,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
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
                                hintText: '護照號碼',
                              ),
                              controller: _passportId,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
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
                                hintText: 'Email',
                              ),
                              controller: _email,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          SizedBox(height: 12),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => tAndC()));
                            },
                            child: Text(
                              '詳情請見T&C',
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              context.push(
                                "/payment",
                                extra: OrderForm(
                                  givenName: _givenName.text,
                                  surname: _surname.text,
                                  gender: _genderValueNotifier.value,
                                  passportId: _passportId.text,
                                  email: _email.text,
                                ),
                              );
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
      ),
    );
  }
}
