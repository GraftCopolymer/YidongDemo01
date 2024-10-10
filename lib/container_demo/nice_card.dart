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
      // 内容居中对齐
      alignment: Alignment.center,
      // 设置一定的内边距
      padding: EdgeInsets.all(8),
      // 容器的装饰
      decoration: BoxDecoration(
        // 背景色为黑色
        color: Colors.black,
        // 设置边框半径（圆角边框）
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // 外部阴影，可以添加多个阴影，直接写在数组中即可
        boxShadow: [
          BoxShadow(
            // 阴影颜色
            color: Colors.grey,
            // 模糊半径
            blurRadius: 20,
            // 阴影偏移
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