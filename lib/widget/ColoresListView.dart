import 'package:flutter/cupertino.dart';

import 'contentButtonSheet.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const ColorItem();
          }
      ),
    );
  }
}