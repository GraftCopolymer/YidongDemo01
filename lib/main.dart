import 'package:flutter/material.dart';
import 'package:little_demo/column_demo/column_cross_alignment_page.dart';
import 'package:little_demo/column_demo/column_main_alignment_page.dart';
import 'package:little_demo/column_demo/column_page.dart';
import 'package:little_demo/container_demo/nice_card_page.dart';
import 'package:little_demo/demo_card.dart';
import 'package:little_demo/row_demo/row_cross_alignment_page.dart';
import 'package:little_demo/row_demo/row_main_alignment_page.dart';
import 'package:little_demo/row_demo/row_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // 整个App的配色方案
        colorScheme: ColorScheme.fromSeed(
          // 改变seedColor，保存后观察页面颜色变化
          seedColor: Colors.blueAccent, brightness: Brightness.light,
        ),
        // 不同类型字体大小
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // ···
          titleLarge: const TextStyle(
            fontSize: 30,
          ),
          bodyMedium: const TextStyle(
            fontSize: 25,
          ),
          displaySmall: const TextStyle(
            fontSize: 20,
          ),
          bodySmall: const TextStyle(
            fontSize: 20,
          ),
        ),
        // 设置按钮主题
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 18)
          )
        )
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.favorite, color: Colors.red,),
            SizedBox(width: 20,),
            Text(
              "移动第二次培训Demo",
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DemoCard(
                cardTitle: "Column 演示",
                children: [
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到基础用法展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return ColumnBasePage();
                        },
                      ));
                    }, 
                    child: Text("基础用法")
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到主轴对齐展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return ColumnMainAlignmentPage();
                        },
                      ));
                    }, 
                    child: Text("主轴对齐")
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到纵轴对齐展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return ColumnCrossAlignmentPage();
                        },
                      ));
                    }, 
                    child: Text("纵轴对齐")
                  ),
                ],
              ),
              DemoCard(
                cardTitle: "Row 演示", 
                children: [
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到基础用法展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return RowBasePage();
                        },
                      ));
                    }, 
                    child: Text("基础用法")
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到主轴对齐展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return RowMainAlignmentPage();
                        },
                      ));
                    }, 
                    child: Text("主轴对齐")
                  ),
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到纵轴对齐展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return RowCrossAlignmentPage();
                        },
                      ));
                    }, 
                    child: Text("纵轴对齐")
                  ),
                ]
              ),
              DemoCard(
                cardTitle: "Container 演示", 
                children: [
                  ElevatedButton(
                    onPressed: (){
                      // 跳转到纵轴对齐展示页面
                      Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) {
                          return NiceCardPage();
                        },
                      ));
                    }, 
                    child: Text("黑色卡片")
                  ),
                ]
              )
            ],
          ),
        ),
      )
    );
  }
}
