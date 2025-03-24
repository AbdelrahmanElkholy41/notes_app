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
        Customappbar(text: 'Notes', icon: Icons.search,),


        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index)
          {
          
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: cardNote(),
            );

          },

          ),
        )
      ],
    );
  }
}

