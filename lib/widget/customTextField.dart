import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Customtextfield extends StatelessWidget {

  Customtextfield({super.key, required this.hintText,  this.obsec=false,  this.maxline=1, this.onSaved, this.onChanged});


  final String hintText;
  final int maxline;
  final bool? obsec;
  final void Function(String)? onChanged;


final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSaved,

      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxline,
      obscureText: obsec!,
      // validator: (data){
      //   if(data!.isEmpty)
      //   {
      //     return 'data is require ';
      //   }
      //},
      onChanged:onChanged,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),

          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          )
      ),
    );
  }
}
