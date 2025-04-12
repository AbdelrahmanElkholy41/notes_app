import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton( {super.key, required this.action, required this.onTap,this. isloading=false });
  final String action;
  final VoidCallback onTap;
 bool  isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isloading? const CircularProgressIndicator(): Text(
          action,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
