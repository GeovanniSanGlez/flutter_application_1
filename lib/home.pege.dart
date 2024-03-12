import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePege extends StatefulWidget{
  const HomePege({super.key});
  @override
  Widget build(BuildContext context){
    var padding = Padding(padding: EdgeInsets.all(8),
            decoration:BoxDecoration(backgroundBlendMode:),
            );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column(
            children: [padding],
          ) 
        ),
      ),
    );
  }

  dynamic get newMethod => Decoration;
}