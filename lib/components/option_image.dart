import 'package:flutter/material.dart';

class OptionImage extends StatelessWidget {
  String image;
  void Function() onClick;
  OptionImage(this.image, this.onClick, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: SizedBox(
          width: 100, height: 100, child: Image(image: AssetImage(image))),
    );
  }
}
