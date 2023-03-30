import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animate_do/animate_do.dart';
import 'dart:math' as math;

class MobileDesignPage extends StatefulWidget {
  const MobileDesignPage({super.key});

  @override
  State<MobileDesignPage> createState() => _MobileDesignPageState();
}

class _MobileDesignPageState extends State<MobileDesignPage> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
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
              Stack(
                children: [
                  Image.asset(
                    'assets/PNG/background_mobile.png',
                    fit: BoxFit.cover,
                    // height: 700,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      height: 57,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Icon(Icons.menu)
                            InkWell(
                                onTap: () {
                                  debugPrint('Menu');
                                },
                                child: Image.asset('assets/PNG/menu.png')),
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
                              children: [
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
                                  child:
                                      SvgPicture.asset('assets/SVG/cart.svg'),
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
                      top: 130,
                      right: 0,
                      child: FadeInLeft(
                        child: SizedBox(
                            height: 230,
                            child: Image.asset('assets/PNG/female_sleeve.png')),
                      )),
                  Positioned(
                      top: 340,
                      left: 20,
                      child: FadeInRight(
                        child: SizedBox(
                            height: 340,
                            child: Image.asset('assets/PNG/hoodie_men.png')),
                      )),
                  Positioned(
                    top: 490,
                    left: 130,
                    right: 130,
                    child: FadeIn(
                      delay: const Duration(milliseconds: 100),
                      child: InkWell(
                          onTap: () {
                            debugPrint('Shop');
                          },
                          child: Container(
                            width: 200,
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
                                debugPrint('Shop now');
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
                  Positioned(
                      top: 600,
                      right: 15,
                      child: FadeInLeft(
                        child: SizedBox(
                            height: 320,
                            child: Image.asset('assets/PNG/close_hoodie.png')),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                          height: 400,
                          child: Image.asset('assets/PNG/women_sleeve.png')),
                    ),
                    _button(text: 'Sweatshirt', sized: size),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                          height: 400,
                          child: Image.asset('assets/PNG/women_sleeve.png')),
                    ),
                    _button(text: 'Hoodies', sized: size),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                          height: 400,
                          child: Image.asset('assets/PNG/women_sleeve.png')),
                    ),
                    _button(text: 'Pair', sized: size),
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
                          0.40,
                        ),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 57,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      'SALE',
                      style: TextStyle(
                          color: Color.fromRGBO(207, 66, 66, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 34),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[_rowImg(), _rowImg()],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[_rowImg(), _rowImg()],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[_rowImg(), _rowImg()],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: 180,
                        height: 40,
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
                              offset:
                                  Offset(0, 10), // changes position of shadow
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
                            'More',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
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
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: CircleAvatar(
                  radius: 50,
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
                        fontSize: 23),
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
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 30),
                child: Text(
                  'COLLECTION',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        1,
                      ),
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  'INFORMATION',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        1,
                      ),
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  'MORE',
                  style: TextStyle(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        1,
                      ),
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                ),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
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
                  height: 280,
                  child: badges.Badge(
                      position: badges.BadgePosition.topEnd(top: 10, end: -15),
                      badgeContent: const Text(
                        '15% OFF',
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
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
                      child: Image.asset('assets/PNG/women_sleeve.png')))),
          const Padding(
            padding: EdgeInsets.only(left: 3, top: 5),
            child: Text(
              'LOREM IPSUM',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              'Lorem ipsum',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _button({required String text, required double sized}) {
  return Positioned(
    bottom: 30,
    left: sized < 500 ? 145 : 170,
    right: sized < 500 ? 145 : 170,
    child: Container(
      width: 200,
      height: 35,
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
  );
}
