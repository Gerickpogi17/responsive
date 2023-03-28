import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animate_do/animate_do.dart';

class MobileDesignPage extends StatefulWidget {
  const MobileDesignPage({super.key});

  @override
  State<MobileDesignPage> createState() => _MobileDesignPageState();
}

class _MobileDesignPageState extends State<MobileDesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
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
                                  color: Color.fromRGBO(0, 0, 0, 0.30,),
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
                                primary: Color.fromRGBO(255, 255, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(60), // <-- Radius
                                ),
                              ),
                              child: const Text('Shop Now', 
                              style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                              
                              ),),
                            ),
                          )),
                    ),
              ),
                Positioned(
                  top: 590,
                  right: 20,
                  child: FadeInLeft(
                    child: SizedBox(
                        height: 310,
                        child: Image.asset('assets/PNG/close_hoodie.png')),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
