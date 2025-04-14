
import 'package:flutter/material.dart';

import '../modal/NoteModal.dart';
import 'contentButtonSheet.dart';

class EditNotesColorListView extends StatefulWidget {
  const EditNotesColorListView({super.key, required this.note});
  final NoteModal note;
  @override
  State<EditNotesColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<EditNotesColorListView> {
  late int currentIndex ;

  List<Color>colors=[
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff537D8D),
    const Color(0xff482C3D),
    Colors.blue,
    Colors.deepPurpleAccent,
    Colors.tealAccent,
  ];
  @override
  @override
  void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }
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
                    widget.note.color=colors[currentIndex].value;
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
