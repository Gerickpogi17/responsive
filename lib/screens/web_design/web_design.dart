import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animate_do/animate_do.dart';
import 'dart:math' as math;

class WebDesignPage extends StatefulWidget {
  const WebDesignPage({super.key});

  @override
  State<WebDesignPage> createState() => _WebDesignPageState();
}

class _WebDesignPageState extends State<WebDesignPage> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    debugPrint(size.toString());
    return Scaffold(
        backgroundColor: const Color.fromRGBO(
          235,
          234,
          232,
          1,
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Stack(children: [
                Image.asset(
                  'assets/PNG/hoodie_appbar.png',
                  fit: BoxFit.cover,
                  // height: 700,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 9),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Help',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            VerticalDivider(
                              indent: 1,
                              endIndent: 1,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Text(
                              'Join Us',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            VerticalDivider(
                              thickness: 1,
                              indent: 1,
                              endIndent: 1,
                              color: Colors.black,
                            ),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    height: 57,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 23,
                            backgroundColor: Color.fromRGBO(
                              217,
                              217,
                              217,
                              1,
                            ),
                            child: Text(
                              'Logo',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 13),
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                'HOME',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'NEW ARRIVAL',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'SHOP',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'LAST COLLECTION',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'MEN',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'WOMEN',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 300,
                                height: 40,
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(0),
                                    hintText: "Search",
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    fillColor: Color.fromRGBO(
                                      228,
                                      228,
                                      228,
                                      1,
                                    ),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(60)),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              badges.Badge(
                                badgeContent: const Text(
                                  '0',
                                ),
                                position: badges.BadgePosition.bottomEnd(),
                                badgeStyle: const badges.BadgeStyle(
                                  badgeColor: Color.fromRGBO(
                                    217,
                                    217,
                                    217,
                                    1,
                                  ),
                                ),
                                child: SvgPicture.asset('assets/SVG/cart.svg'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset('assets/SVG/star.svg'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 300,
                    left: 0,
                    child: FadeInRight(
                      child: SizedBox(
                          height: size < 1800 ? size * 0.38 : size * 0.37,
                          child: Image.asset(
                            'assets/PNG/close_hoodie.png',
                            fit: BoxFit.cover,
                          )),
                    )),
                Positioned(
                    top: 250,
                    right: 0,
                    child: FadeInRight(
                      child: SizedBox(
                          height: size < 1700 ? size * 0.35 : size * 0.37,
                          child: Image.asset(
                            'assets/PNG/female_sleeve.png',
                            fit: BoxFit.cover,
                          )),
                    )),
                Positioned(
                    top: 350,
                    left: size < 1900 ? size * 0.28 : 500,
                    child: FadeInRight(
                      child: SizedBox(
                          height: size < 1600 ? size * 0.40 : size * 0.37,
                          child: Image.asset(
                            'assets/PNG/hoodie_men.png',
                            fit: BoxFit.cover,
                          )),
                    )),
                Positioned.fill(
                  bottom: size < 1600 ? sizeH * 0.05 : sizeH * 0.30,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FadeIn(
                      delay: const Duration(milliseconds: 100),
                      child: InkWell(
                          onTap: () {
                            debugPrint('Shop');
                          },
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(
                                    0,
                                    0,
                                    0,
                                    0.30,
                                  ),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 10), // changes position of shadow
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                debugPrint('Shop');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(255, 255, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(60), // <-- Radius
                                ),
                              ),
                              child: const Text(
                                'Shop Now',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
              ]),
              Container(
                  color: const Color.fromRGBO(
                    235,
                    234,
                    232,
                    1,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(children: [
                              SizedBox(
                                height: 550,
                                child:
                                    Image.asset('assets/PNG/women_sleeve.png'),
                              ),
                              _button(text: 'Sweatshirts')
                            ]),
                            Stack(children: [
                              SizedBox(
                                height: 550,
                                child: Image.asset('assets/PNG/hoodie_men.png'),
                              ),
                              _button(text: 'Hoodies')
                            ]),
                            Stack(children: [
                              SizedBox(
                                height: 550,
                                child:
                                    Image.asset('assets/PNG/women_sleeve.png'),
                              ),
                              _button(text: 'Pair')
                            ]),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Column(
                            children: [
                              textWidget(
                                  textLorem:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'),
                              textWidget(
                                  textLorem:
                                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua,'),
                              textWidget(
                                  textLorem:
                                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco'),
                              textWidget(
                                  textLorem:
                                      'laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit'),
                              textWidget(
                                  textLorem:
                                      'in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
                              textWidget(
                                  textLorem:
                                      'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia'),
                              textWidget(
                                  textLorem:
                                      'deserunt mollit anim id est laborum.'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(
                                    0,
                                    0,
                                    0,
                                    0.50,
                                  ),
                                  // spreadRadius: 0,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 70,
                            width: double.infinity,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'SALE',
                                    style: TextStyle(
                                        color: Color.fromRGBO(207, 66, 66, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 48),
                                  ),
                                  Text(
                                    'SALE',
                                    style: TextStyle(
                                        color: Color.fromRGBO(207, 66, 66, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 48),
                                  ),
                                  Text(
                                    'SALE',
                                    style: TextStyle(
                                        color: Color.fromRGBO(207, 66, 66, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 48),
                                  ),
                                  Text(
                                    'SALE',
                                    style: TextStyle(
                                        color: Color.fromRGBO(207, 66, 66, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 48),
                                  ),
                                  Text(
                                    'SALE',
                                    style: TextStyle(
                                        color: Color.fromRGBO(207, 66, 66, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 48),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    _rowImg(),
                                    _rowImg(),
                                    _rowImg(),
                                    _rowImg()
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    _rowImg(),
                                    _rowImg(),
                                    _rowImg(),
                                    _rowImg()
                                  ],
                                ),
                                const SizedBox(
                                  height: 70,
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(
                                          0,
                                          0,
                                          0,
                                          0.25,
                                        ),
                                        // spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(0,
                                            10), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint('Shop');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            60), // <-- Radius
                                      ),
                                    ),
                                    child: const Text(
                                      'More',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                child: Text(
                                  'Logo',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 30),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 30),
                              child: Container(
                                margin: const EdgeInsets.only(right: 150),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Transform.rotate(
                                        angle: 15 * math.pi / 80,
                                        child: const Icon(
                                          Icons.navigation_rounded,
                                          color: Color.fromRGBO(
                                            103,
                                            103,
                                            103,
                                            1,
                                          ),
                                          size: 28,
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                              103,
                                              103,
                                              103,
                                              1,
                                            ),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Container(
                                margin: const EdgeInsets.only(right: 150),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.phone_android_sharp,
                                      color: Color.fromRGBO(
                                        103,
                                        103,
                                        103,
                                        1,
                                      ),
                                      size: 28,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Lorem ipsum',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                              103,
                                              103,
                                              103,
                                              1,
                                            ),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Container(
                                margin: const EdgeInsets.only(right: 150),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.email_outlined,
                                      color: Color.fromRGBO(
                                        103,
                                        103,
                                        103,
                                        1,
                                      ),
                                      size: 28,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Lorem ipsum dolor sit amet',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                              103,
                                              103,
                                              103,
                                              1,
                                            ),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25, left: 8),
                              child: Image.asset('assets/PNG/social_media.png'),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 150),
                      child: Column(
                        children: [
                          const Text(
                            'COLLECTION',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 150),
                      child: Column(
                        children: [
                          const Text(
                            'INFORMATION',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 200),
                      child: Column(
                        children: [
                          const Text(
                            'MORE',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                          const SizedBox(
                            height: 10,
                          ),
                          textLorem(textLoremMedium: 'Lorem ipsum'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ]))));
  }
}

Widget textLorem({required String textLoremMedium}) {
  return const Text(
    'Lorem impsum',
    style: TextStyle(
        color: Color.fromRGBO(103, 103, 103, 1),
        fontWeight: FontWeight.w500,
        fontSize: 18),
  );
}

Widget textWidget({required String textLorem}) {
  return Text(
    textLorem,
    style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color.fromRGBO(0, 0, 0, 1)),
  );
}

Widget _button({
  required String text,
}) {
  return Positioned.fill(
      bottom: 50,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 200,
          height: 42,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(
                  0,
                  0,
                  0,
                  0.30,
                ),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 10), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              debugPrint('Shop');
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(255, 255, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60), // <-- Radius
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        ),
      ));
}

Widget _rowImg() {
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                  height: 450,
                  child: badges.Badge(
                      position: badges.BadgePosition.topEnd(top: 20, end: -35),
                      badgeContent: const Text(
                        '15% OFF',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 22),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: Color.fromRGBO(
                          224,
                          202,
                          158,
                          1,
                        ),
                        shape: badges.BadgeShape.square,
                      ),
                      child: SizedBox(
                          child: Image.asset('assets/PNG/women_sleeve.png'))))),
          const Padding(
            padding: EdgeInsets.only(left: 3, top: 10),
            child: Text(
              'LOREM IPSUM',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              'Lorem ipsum',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ],
  );
}
