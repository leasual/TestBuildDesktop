import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  final bool suffixIcon;
  final bool? isDense;
  final bool obscureText;
  final TextInputAction action;
  final bool readonly;
  final TextInputType textInputType;

  const CustomInputField(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      required this.validator,
      this.readonly = false,
      this.action = TextInputAction.next,
      this.suffixIcon = false,
      this.isDense,
      this.obscureText = false,
      this.textInputType = TextInputType.text })
      : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  //
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.labelText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            keyboardType: widget.textInputType,
            readOnly: widget.readonly,
            textInputAction: widget.action,
            controller: widget.controller,
            obscureText: (widget.obscureText && _obscureText),
            decoration: InputDecoration(
                isDense: (widget.isDense != null) ? widget.isDense : false,
                hintText: widget.hintText,
                suffixIcon: widget.suffixIcon
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? EvaIcons.eyeOff2Outline
                              : EvaIcons.eyeOutline,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
                suffixIconConstraints: (widget.isDense != null)
                    ? const BoxConstraints(maxHeight: 33)
                    : null,
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700]!, width: 0.1)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700]!, width: 0.1)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700]!, width: 0.1))),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}
