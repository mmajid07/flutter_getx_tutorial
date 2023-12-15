
import 'package:flutter/material.dart';

class InputFormComponent extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final bool obscuretext ;

  InputFormComponent({Key? key,
    this.hintText,
    required this.controller,
    this.focusNode, this.validator,
    this.onFieldSubmitted,
    required this.obscuretext,
     }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: obscuretext,
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
