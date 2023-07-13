import "package:flutter/material.dart";

import '../util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username:"createdbykelvimimperial",
      videoDescription: "Clone TikTok",
      numberOfLikes: "1.2M",
      numberOfComments: "1232",
      numberOfShares: "122",
      userPosts: Container(color:Colors.deepPurple[300]),
    );
  }
}
