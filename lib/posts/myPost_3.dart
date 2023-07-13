import "package:flutter/material.dart";

import '../util/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username:"José",
      videoDescription: "I Love Flutter",
      numberOfLikes: "1.1M",
      numberOfComments: "1220",
      numberOfShares: "300",
      userPosts: Container(color:Colors.blue[300]),
    );
  }
}