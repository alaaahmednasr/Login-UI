import 'package:flutter/material.dart';

Widget defaultButton({
  required void Function() buttonFunction,
  required String text,
  double theheight = 40,
  double theFontSize = 20,
  double buttonwidth = double.infinity,
  Color textColor = Colors.white,
  Color buttonColor = const Color(0xFFC53F3F),
}) =>
    Container(
      height: theheight,
      color: buttonColor,
      width: buttonwidth,
      child: MaterialButton(
        onPressed: buttonFunction,
        child: Text(
          "${text.toUpperCase()}",
          style: TextStyle(
            fontSize: theFontSize,
            color: textColor,
          ),
        ),
      ),
    );

StatefulWidget defaultTextFormField ({
  required String text,
  double border = 30,
  required IconData prefix,
  IconData? suffix,
  required TextEditingController textController,
  required String? Function(String?) validateFunction,
   void Function()? iconFunction,

  bool obscure = false,
  /*** */
}) =>
    TextFormField(
      obscureText: obscure,
      controller: textController,
      validator: validateFunction,
      decoration: InputDecoration(
        labelText: '${text}',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              border,
            ),
          ),
        ),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: 
        suffix != null ?
        IconButton(
          icon: Icon(suffix),
          onPressed: iconFunction,
        )
        : null,

      ),
    );
