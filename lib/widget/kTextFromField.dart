import 'package:flutter/material.dart';

class KTextFromField extends StatelessWidget {
  const KTextFromField({
    super.key,
    this.isPass=false,
    this.iconData,
    this.label,
    this.hintText,
    this.validator, 
    this.obsecureText=false,
    this.suffixicon,
    this.prefixIcon,
    this.controller,
    this.readonly=false,
    
  });
final bool isPass;
final IconData? iconData;
final label;
final hintText;
final dynamic validator;
final  obsecureText;
final  suffixicon;
final prefixIcon;
final TextEditingController? controller;
final bool readonly;



  // bool isPassVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        
      },
      validator: validator  ,
      controller: controller,
      obscureText: obsecureText,
      readOnly: readonly,
      decoration: InputDecoration(
        
        label: label,
        hintText: hintText,
        

        // prefixIcon: iconData==null? 
        // const Icon(Icons.person) :Icon(iconData),
        prefixIcon: prefixIcon,

        suffixIcon: suffixicon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 50)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.green,width: 2)
        ), 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.green,width: 2)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color.fromARGB(255, 219, 25, 25),width: 2)
        )

        ),
    );
  }
}
