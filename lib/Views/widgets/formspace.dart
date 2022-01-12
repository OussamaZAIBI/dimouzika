import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class formspace extends StatefulWidget {
  final String? txt;
  final bool obs;
  final IconButton? icon;
  final TextEditingController? controller;
  //final ValidationBuilder? validator;
  final String? Function(String?)? validationfield;

  formspace(
      {Key? key,
      @required this.txt,
      this.obs = false,
      this.icon,
      this.validationfield,
      this.controller})
      : super(key: key);

  @override
  _formspaceState createState() => _formspaceState();
}

class _formspaceState extends State<formspace> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obs,
      validator: widget.validationfield,
      style: const TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 16,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFF79532)),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: widget.icon,
        filled: true,
        fillColor: Colors.white,
        hintText: widget.txt,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff60cfd6)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      controller: widget.controller,
    );
  }
}
