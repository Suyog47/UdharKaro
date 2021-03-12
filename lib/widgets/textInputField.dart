import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

//NameTextField
//PhoneTextField
//EmailTextField
//PasswordTextField
class NameTextField extends StatelessWidget {
  final String name;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  const NameTextField(
      {this.name,
      @required this.label,
      @required this.callback,
      @required this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.copyWith(labelText: label),
      initialValue: name,
      validator: (val) => val.isEmpty ? "This field is required" : null,
      onChanged: (val) {
        callback(val);
      },
    );
  }
}

class PhoneTextField extends StatelessWidget {
  final String value;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  PhoneTextField(
      {this.value, this.label, @required this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: (decoration != null)
          ? decoration.copyWith(labelText: label)
          : InputDecoration(labelText: label),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10)
      ],
      keyboardType: TextInputType.number,
      initialValue: value,
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
  final String value;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  EmailTextField(
      {this.value, this.label, @required this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: (decoration != null)
          ? decoration.copyWith(labelText: label)
          : InputDecoration(labelText: label),
      initialValue: value,
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
  final String value;
  final String label;
  final Function callback;
  final InputDecoration decoration;

  PasswordTextField(
      {this.value, this.label, @required this.callback, this.decoration});

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
      decoration: (widget.decoration != null)
          ? widget.decoration.copyWith(
              suffixIcon: IconButton(
                  color: blackColor,
                  onPressed: _toggle,
                  icon: Icon(_obscureText ? Icons.lock_open : Icons.lock)),
              labelText: widget.label,
            )
          : InputDecoration(
              suffixIcon: IconButton(
                  color: blackColor,
                  onPressed: _toggle,
                  icon: Icon(_obscureText ? Icons.lock_open : Icons.lock)),
              labelText: widget.label,),
      initialValue: widget.value,
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

class OTPTextField extends StatelessWidget {

  final String label;
  final Function callback;
  final InputDecoration decoration;

  OTPTextField(
      {this.label, @required this.callback, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: (decoration != null)
          ? decoration.copyWith(labelText: label)
          : InputDecoration(labelText: label),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4)
      ],
    validator: (val) {
      if (val.length == 4) {
        return null;
      }
      return "Enter 4 digit otp number";
    },
      keyboardType: TextInputType.number,
      onChanged: (val){
        callback(val);
      },
    );
  }
}

