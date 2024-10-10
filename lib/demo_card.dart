import 'package:flutter/material.dart';

class DemoCard extends StatelessWidget {
  const DemoCard({
    super.key,
    required this.cardTitle,
    required this.children,
  });

  final String cardTitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.8,
      child: Card(
        shadowColor: Colors.grey,
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    cardTitle,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 118, 118, 118)
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.6,
                height: 1,
                child: Divider(height: 100, color: Colors.black,)
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 5.0,
                  children: children,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}