import 'package:flutter/material.dart';
import 'package:little_demo/container_demo/nice_card.dart';

class NiceCardPage extends StatelessWidget {
  const NiceCardPage({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NiceCard(),
            SizedBox(height: 20,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "TIPS: ",
                    style: TextStyle(
                      color: Colors.blueAccent
                    )
                  ),
                  TextSpan(
                    text: "尝试修改上方这个组件的源代码,来达到你想要的效果",
                    style: TextStyle(
                      color: Colors.black,
                    )
                  ),
                ]
              )
            )
          ],
        )
      ),
    );
  }
}