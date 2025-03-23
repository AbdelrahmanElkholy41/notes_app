import 'package:flutter/material.dart';

import 'cardNote.dart';
import 'customAppBar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Customappbar(),


        cardNote(),
      ],
    );
  }
}

