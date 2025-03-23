
import 'package:flutter/cupertino.dart';

import 'Custombutton.dart';
import 'customTextfield.dart';

class contentButtonSheet extends StatelessWidget {
  const contentButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Customtextfield(hintText: 'Title'),
            SizedBox(height:  30,),
            Customtextfield(hintText: 'description',maxline: 5,),
            SizedBox(height: 50,),
            Custombutton(action: 'Add', onTap: () {  },),
            SizedBox(height: 10,)
        
          ],
        ),
      ),
    );
  }
}