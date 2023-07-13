import "package:flutter/material.dart";
import '../util/bottom.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final  userPosts;

  PostTemplate({required this.username, required this.numberOfComments, required this.numberOfLikes,
      required this.numberOfShares, required this.userPosts, required this.videoDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          userPosts,

      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("@"+username,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: videoDescription,style:TextStyle(color:Colors.white)),
                  TextSpan(
                      text: "#KI #flutter",
                      style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white)),
                ]))
              ])),
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              alignment: Alignment(1, 1),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                MyButtom(icon: Icons.favorite, number: numberOfLikes),
                MyButtom(icon: Icons.chat_bubble_outline, number: numberOfComments),
                MyButtom(icon: Icons.send, number: numberOfShares),
              ])))
    ]));
  }
}
