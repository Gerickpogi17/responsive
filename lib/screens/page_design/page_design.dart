

import 'package:flutter/material.dart';
import 'package:exam/screens/screens.dart';

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
        if (constraints.maxWidth < 800) {
          return const MobileDesignPage();
        } 
        if (constraints.maxWidth < 1300) {
          return const TabletDesignPage();
        }
        return const WebDesignPage();
      },
    );

    
  }
}