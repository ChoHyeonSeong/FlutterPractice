import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        int crtPage = controller.page!.toInt();
        int nextPage = crtPage + 1;
        if (nextPage > 3) nextPage = 0;
        controller.animateToPage(
          nextPage,
          duration: Duration(seconds: 1),
          curve: Curves.linear,
        );
      },
    );
  }

  @override
  void dispose() {
    if(timer !=null){
      timer!.cancel();
    }
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4]
            .map(
              (e) => Image.asset(
                'asset/img/img_$e.jpg',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }

}
