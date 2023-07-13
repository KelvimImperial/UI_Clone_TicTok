import "package:flutter/material.dart";

import '../util/post_template.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username:"Kelvim",
      videoDescription: "Estamos On",
      numberOfLikes: "1.6M",
      numberOfComments: "1231",
      numberOfShares: "120",
      userPosts: Container(color:Colors.pink[200]),
    );
  }
}