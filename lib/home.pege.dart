import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePege extends StatefulWidget {
  const HomePege({super.key});
  @override
  State<HomePege> createState() => _HomePegeState();
}

class _HomePegeState extends State<HomePege> {
  late Color myColor;
  late Size mediaSize;
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child:Column(
          children: [
            Padding(padding: EdgeInsets.all(14),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(7),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    ),
  );

}