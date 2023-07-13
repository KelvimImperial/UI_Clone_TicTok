import "package:flutter/material.dart";
import 'package:flutter_application_1/freelancer/posts/myPost_1.dart';
import 'package:flutter_application_1/freelancer/posts/myPost_2.dart';
import 'package:flutter_application_1/freelancer/posts/myPost_3.dart';



class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
      children: [

        MyPost1(),
        MyPost2(),
        MyPost3(),
     
    ]));
  }
}
