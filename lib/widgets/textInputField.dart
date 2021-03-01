import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/constants.dart';


class NameTextField extends StatelessWidget {

  final String name;
  final Function callable;
  final InputDecoration decoration;

  NameTextField({this.name, this.callable, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      initialValue: name,
      validator: (val) => val.isEmpty ? "This field is required" : null,
      onChanged: (val){
        callable(val);
      },
    );
  }
}

class PhoneTextField extends StatelessWidget {

  final String num;
  final Function callable;
  final InputDecoration decoration;

  PhoneTextField({this.num, this.callable, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly
      ],
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
      onChanged: (val){
        callable(val);
      },
    );
  }
}


class EmailTextField extends StatelessWidget {

  final String email;
  final Function callable;
  final InputDecoration decoration;

  EmailTextField({this.email, this.callable, this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: decoration,
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
          callable(val);
       },
    );
  }
}


class PassWordTextFields extends StatefulWidget {

  final String pass;
  final Function callable;
  final InputDecoration decoration;

  PassWordTextFields({this.pass, this.callable, this.decoration});

  @override
  _PassWordTextFieldsState createState() => _PassWordTextFieldsState();
}

class _PassWordTextFieldsState extends State<PassWordTextFields> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 80.0,
          child: new TextFormField(
            decoration: widget.decoration,
            initialValue: widget.pass,
            validator: (val) => val.length < 6 ||
                val.length > 20
                ? 'Password should be between 6 to 20 chars.'
                : null,
            onChanged: (val){
              widget.callable(val);
            },
            obscureText: _obscureText,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              color: Colors.black,
              onPressed: _toggle,
              icon: Icon(_obscureText
                  ? Icons.lock_open
                  : Icons.lock)),
        )
      ],
    );
  }
}


//class PasswordTextField extends StatelessWidget {
//
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}





