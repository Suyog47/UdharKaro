import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class NameTextField extends StatelessWidget {
  final String name;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  NameTextField({this.name, this.label, this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.copyWith(labelText: label, labelStyle: t16_Dark),
      initialValue: name,
      validator: (val) => val.isEmpty ? "This field is required" : null,
      onChanged: (val) {
        callback(val);
      },
    );
  }
}

class PhoneTextField extends StatelessWidget {
  final String num;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  PhoneTextField({this.num, this.label, this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.copyWith(labelText: label, labelStyle: t16_Dark),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      initialValue: num,
      maxLength: 10,
      validator: (val) {
        if (val.length == 10 && int.parse(val[0]) >= 7) {
          return null;
        }
        return "Enter valid phone number";
      },
      cursorColor: redColor,
      onChanged: (val) {
        callback(val);
      },
    );
  }
}

class EmailTextField extends StatelessWidget {
  final String email;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  EmailTextField({this.email, this.label, this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.copyWith(labelText: label, labelStyle: t16_Dark),
      initialValue: email,
      validator: (val) {
        if (val.isNotEmpty &&
            RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(val)) {
          return null;
        }
        return "Enter valid email";
      },
      onChanged: (val) {
        callback(val);
      },
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String pass;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  PasswordTextField({this.pass, this.label, this.callback, this.decoration});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: widget.decoration.copyWith(
          suffixIcon: IconButton(
              color: blackColor,
              onPressed: _toggle,
              icon: Icon(_obscureText ? Icons.lock_open : Icons.lock)),
          labelText: widget.label,
          labelStyle: t16_Dark),
      initialValue: widget.pass,
      validator: (val) => val.length < 6 || val.length > 20
          ? 'Password should be between 6 to 20 chars.'
          : null,
      onChanged: (val) {
        widget.callback(val);
      },
      obscureText: _obscureText,
    );
  }
}
