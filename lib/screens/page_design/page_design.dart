

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/screens/screens.dart';

class PageDesignPage extends StatefulWidget {
  const PageDesignPage({super.key});

  @override
  State<PageDesignPage> createState() => _PageDesignPageState();
}

class _PageDesignPageState extends State<PageDesignPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const MobileDesignPage();
        } 
        return const WebDesignPage();
      },
    );

    
  }
}