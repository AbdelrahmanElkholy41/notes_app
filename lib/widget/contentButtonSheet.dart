
import 'package:flutter/cupertino.dart';

import 'customTextfield.dart';

class contentButtonSheet extends StatelessWidget {
  const contentButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Customtextfield(hintText: 'Title'),
          SizedBox(height:  30,),
          Customtextfield(hintText: 'description',maxline: 5,),
        ],
      ),
    );
  }
}