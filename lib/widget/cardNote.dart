import 'package:flutter/material.dart';

class cardNote extends StatelessWidget {
  const cardNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                  'Build your '
                      'career with tharwat samy',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(.5))),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.black,
              iconSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(' May21 , 2025',
                  style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.4))),
            ),
          )
        ],
      ),
    );
  }
}
