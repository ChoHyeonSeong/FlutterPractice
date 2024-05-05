import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
  Color color = Colors.lightGreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = color == Colors.lightGreen
                        ? Colors.deepPurpleAccent
                        : Colors.lightGreen;
                  });
                },
                child: WasabiWidget(
                  color: color,
                ),
              ),
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

class WasabiWidget extends StatefulWidget {
  final Color color;

  WasabiWidget({
    super.key,
    required this.color,
  }) {
    print('1) Stateful Widget constructor');
  }

  @override
  State<WasabiWidget> createState() {
    print('2) Stateful Widget createState');
    return _WasabiWidgetState();
  }
}

class _WasabiWidgetState extends State<WasabiWidget> {
  @override
  void initState() {
    print('3) Stateful Widget initState');
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) Stateful Widget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5) Stateful Widget build');
    return Container(
      width: 50.0,
      height: 50.0,
      color: widget.color,
    );
  }

  @override
  void deactivate() {
    print('6) Stateful Widget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) Stateful Widget dispose');
    super.dispose();
  }
}
