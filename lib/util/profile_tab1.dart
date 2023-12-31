import "package:flutter/material.dart";

class FirstTab extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(color: Colors.grey[200]),
          );
        });
  }
}
