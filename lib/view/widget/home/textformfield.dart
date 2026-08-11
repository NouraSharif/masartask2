import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: AppColor.textFieldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: "What are you looking?",
          hintStyle: TextStyle(color: AppColor.textColor),
          suffixIcon: Icon(Icons.search_rounded, color: Colors.black, size: 25),
        ),
      ),
    );
  }
}
