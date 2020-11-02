import 'package:flutter/material.dart';

import '../constants.dart';

class Input extends StatelessWidget {
  /// This class is a resuable Input box

  // TODO: The showObscureText and obscureText could be handled by one property
  //  - also the obscure text should/ could be local

  final String hintText;
  final Function validator;
  final Function onSaved;
  final Function toggleEye;
  final String keyboard;
  final String init;
  final bool isPassword;
  final Color isPasswordColor;
  final bool showObscureText;
  final bool obscureText;
  final Color styleColor;
  final Color hintStyleColor;
  final bool enabled;
  final String labelText;
  final int maxLines;

  const Input(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.toggleEye,
      this.init,
      this.isPassword = false,
      this.isPasswordColor,
      this.showObscureText = false,
      this.obscureText = false,
      this.keyboard,
      this.styleColor,
      this.hintStyleColor,
      this.enabled = true,
      this.labelText,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enabled: enabled,
          style: TextStyle(color: Color(0xFF3C4043)),
          cursorColor: styleColor,
          obscureText: obscureText,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: hintText,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: isPassword
                ? GestureDetector(
                    onTap: toggleEye,
                    child: Icon(
                      showObscureText ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFFC0C1C3),
                    ),
                  )
                : Text(''),
          ),
          validator: validator,
          initialValue: init,
          onSaved: onSaved,
          keyboardType: keyboard == 'email'
              ? TextInputType.emailAddress
              : keyboard == 'number'
                  ? TextInputType.number
                  : keyboard == 'phone'
                      ? TextInputType.phone
                      : TextInputType.text),
    );
  }
}

class DropdownInput<T> extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final VoidCallback onChanged;
  final VoidCallback onTap;
  final List<T> items;
  final T selectedValue;
  final bool enabled;
  final int maxLines;

  const DropdownInput(
      {Key key,
      this.hintText,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.onTap,
      this.items,
      this.selectedValue,
      this.enabled,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: items
          .map(
            (value) => DropdownMenuItem<T>(
              onTap: () {},
              value: value,
              child: Text(getEnumTitle(value.toString())),
            ),
          )
          .toList(growable: false),
      onChanged: enabled ? (selectedValue) {} : null,
      onSaved: onSaved,
      isExpanded: false,
      value: selectedValue,
      isDense: true,
      disabledHint: Text(getEnumTitle(selectedValue.toString())),
      decoration: InputDecoration(
        enabled: enabled,
        labelText: hintText,
        hintText: hintText,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      validator: validator,
    );
  }
}
