import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                Text('1'),
                Text('2'),
              ],
            ),
            Row(
              children: [
                Text('3'),
                Text('4'),
                Text('5'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
