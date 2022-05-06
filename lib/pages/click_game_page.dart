import 'package:flutter/material.dart';

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
  void Click(int num) {
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
            InkWell(
              onTap: () {
                Click(random_list[0]);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                      image:
                          AssetImage("assets/number/${random_list[0]}.png"))),
            ),
            InkWell(
              onTap: () {
                Click(random_list[1]);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                      image:
                          AssetImage("assets/number/${random_list[1]}.png"))),
            ),
            InkWell(
              onTap: () {
                Click(random_list[2]);
                setState(() {});
              },
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                      image:
                          AssetImage("assets/number/${random_list[2]}.png"))),
            ),
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
