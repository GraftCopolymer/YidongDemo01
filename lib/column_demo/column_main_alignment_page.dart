import 'package:flutter/material.dart';

class ColumnMainAlignmentPage extends StatelessWidget {
  const ColumnMainAlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            SizedBox(width: 20,),
            Text(
              "主轴对齐",
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
          child: Column(
            // 改变下面这行代码来尝试其他对齐方式
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("这是居中对齐! "),
              Icon(Icons.favorite_rounded, size: 100,color: Colors.redAccent,),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Text("我是一个色块"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}