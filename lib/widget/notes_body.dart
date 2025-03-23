import 'package:flutter/material.dart';

import 'customAppBar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: const[
        SizedBox(height: 60,),
        Customappbar()
      ],
    );
  }
}
