import 'package:flutter/material.dart';

class ColumnBasePage extends StatelessWidget {
  const ColumnBasePage({super.key});

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
          child: Column(
            children: [
              Text("Hello World"),
              Text("@w@"),
              Text("看这里OvO"),
              Icon(Icons.accessible_forward_sharp, size: 100,),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Text("我是一个色块"),
              ),
              Text("任何组件都能放进Column中!")
            ],
          ),
        ),
      ),
    );
  }
}