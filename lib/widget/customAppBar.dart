import 'package:flutter/cupertino.dart';

import 'customSearchIcon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes',style: TextStyle(fontSize: 28),),
        Customsearchicon()






      ],
    );
  }
}
