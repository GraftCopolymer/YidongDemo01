import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NiceCard extends StatelessWidget {
  const NiceCard({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 100,
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            offset: Offset(10, 10)
          )
        ]
      ),
      // 使用FittedBox防止文本过长而溢出
      child: FittedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Hi, ",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                    )
                  ),
                  TextSpan(
                    text: "Graft",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    )
                  ),
                  TextSpan(
                    text: "_",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey
                    )
                  ),
                ]
              )
            ),
          ],
        ),
      )
  );
  }
}