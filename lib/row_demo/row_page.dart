import 'package:flutter/material.dart';

class RowBasePage extends StatelessWidget {
  const RowBasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            SizedBox(width: 20,),
            Text(
              "基础用法",
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          // 这里为了防止组件溢出屏幕，加上了FittedBox
          child: FittedBox(
            child: Row(
              children: [
                Text("Hello World "),
                Text(" @w@"),
                Text(" 看这里OvO "),
                Text(" 使用了FittedBox防止溢出 "),
                Icon(Icons.accessible_forward_sharp, size: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}