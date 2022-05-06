import 'package:flutter/material.dart';
import 'package:flutter_demo/components/option_image.dart';

class ClickGamePage extends StatefulWidget {
  ClickGamePage({Key? key}) : super(key: key);

  @override
  State<ClickGamePage> createState() => _ClickGamePageState();
}

class _ClickGamePageState extends State<ClickGamePage> {
  List<int> num_list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> random_list = [];
  int ans = -1;
  int score = 0;
  void click(int num) {
    if (num == ans) {
      score++;
    }
  }

  @override
  Widget build(BuildContext context) {
    num_list.shuffle();
    random_list = num_list.sublist(0, 3);
    ans = random_list[0];
    random_list.shuffle();
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Game"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Please Select $ans",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            OptionImage("assets/number/${random_list[0]}.png", () {
              click(random_list[0]);
              setState(() {});
            }),
            OptionImage("assets/number/${random_list[1]}.png", () {
              click(random_list[1]);
              setState(() {});
            }),
            OptionImage("assets/number/${random_list[2]}.png", () {
              click(random_list[2]);
              setState(() {});
            }),
            Text(
              "Your Score is $score",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            )
          ],
        ),
      ),
    );
  }
}
