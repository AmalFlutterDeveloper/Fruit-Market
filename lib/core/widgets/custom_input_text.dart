import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText(
      {super.key, this.inputType, this.onChange, this.onSaved, this.maxLine});
  final TextInputType? inputType;
  final ValueSetter? onChange;
  final int? maxLine;
  final ValueSetter? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChange,
      onSaved: onSaved,
      maxLines: maxLine,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffcccccc), width: 1),
        ),
      ),
    );
  }
}
