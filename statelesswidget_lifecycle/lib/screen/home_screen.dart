import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) WasabiWidget(),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text('클로킹'),
            )
          ],
        ),
      ),
    );
  }
}

class WasabiWidget extends StatelessWidget {
  const WasabiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 50.0, height: 50.0, color: Colors.lightGreen);
  }
}
