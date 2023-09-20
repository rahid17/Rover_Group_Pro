import 'package:flutter/material.dart';

class KTextFromField extends StatefulWidget {
  const KTextFromField({
    super.key,
    this.isPass=false,
    this.iconData,
    this.label,
    this.hintText,
    this.validator, 
  });
final bool isPass;
final IconData? iconData;
final label;
final hintText;
final dynamic validator;

  @override
  State<KTextFromField> createState() => _KTextFromFieldState();
}

class _KTextFromFieldState extends State<KTextFromField> {
  bool isPassVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        
      },
      validator: (value){
        
      }  ,
      obscureText: isPassVisible,
      decoration: InputDecoration(
        
        label: widget.label,
        hintText: widget.hintText,
        

        prefixIcon: widget.iconData==null? 
        const Icon(Icons.person) :Icon(widget.iconData),

        suffixIcon: widget.isPass!=false?
        GestureDetector(onTap: (){
          setState(() {
            isPassVisible =!isPassVisible;
          });
        },
        child:Icon(isPassVisible? Icons.visibility_off : Icons.visibility ),):null,

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
          borderSide: BorderSide(color: Color.fromARGB(255, 71, 87, 236),width: 2)
        )

        ),
    );
  }
}
