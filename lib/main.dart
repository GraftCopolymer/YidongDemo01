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
    // Scaffold是页面骨架
    return Scaffold(
      // 标题栏
      appBar: AppBar(
        // 标题栏的标题属性，可以接收一个Widget
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
        // 设置标题栏颜色，颜色从我们设置的主题配色方案中生成
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // 页面主体
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // SingleChildScrollView的子组件超出屏幕时可以为其提供滚动功能
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Ctrl + 鼠标左键 查看DemoCard的定义
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
              ),
              DemoCard(
                cardTitle: "各种不同的 Button 演示", 
                children: [
                  ElevatedButton(
                    onPressed: (){
                      // 在控制台打印 Hello ElevatedButton
                      debugPrint("Hello ElevatedButton");
                    }, 
                    child: Text("ElevatedButton")
                  ),
                  TextButton(
                    onPressed: (){
                      // 在控制台打印 Hello TextButton
                      debugPrint("Hello TextButton");
                    }, 
                    child: Text("TextButton")
                  ),
                  IconButton(
                    onPressed: (){
                      // 在控制台打印 Hello IconButton
                      debugPrint("Hello IconButton");
                    }, 
                    icon: Icon(Icons.favorite_border),
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
