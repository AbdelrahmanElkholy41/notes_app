import 'package:flutter/cupertino.dart';

import 'contentButtonSheet.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color>colors=[
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff537D8D),
    const Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {

                    });
                  },
                  child: ColorItem(
                    isActive: currentIndex == index, colors: colors[index],
                  )),
            );
          }),
    );
  }
}
