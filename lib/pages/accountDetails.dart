import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

import '../constants/textStyles.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  String _num = "9087564321",
      _email = "suyogamin11@gmail.com",
      _pass = "hitman_47",
      _category = "Personal Account";

  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                  decoration: BoxDecoration(
                    color: darkBlueColor,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: backIcon),
                      ),
                      Height10,
                      Center(
                          child: Avatar(
                        img: "assets/profilebg.png",
                        radius: 45,
                      )),
                      Height10,
                      Center(
                          child: Text(
                        "Suyog Amin",
                        style: profileHeaderTextStyle,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: textFieldHintTextStyle,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          initialValue: _num,
                          maxLength: 10,
                          validator: (val) {
                            if (val.length == 10 && int.parse(val[0]) >= 7) {
                              return null;
                            }
                            return "Enter valid phone number";
                          },
                          cursorColor: redColor,
                          onChanged: (val) => _num = val,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: textFieldHintTextStyle,
                            ),
                            initialValue: _email,
                            onChanged: (val) => _email = val.trim(),
                            validator: (val) {
                              if (val.isNotEmpty &&
                                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(val)) {
                                return null;
                              }
                              return "Enter valid username";
                            }),
                        Height10,
                        Height10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            DropDown(
                              items: ["Personal Account", "Business Account"],
                              initialValue: _category,
                              onChanged: (val) {
                                setState(() => _category = val);
                              },
                              isExpanded: true,
                            ),
                          ],
                        ),
                        Height10,
                        Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 70.0,
                              child: new TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: textFieldHintTextStyle,
                                ),
                                initialValue: _pass,
                                validator: (val) => val.length < 6 ||
                                        val.length > 20
                                    ? 'Password should be between 6 to 20 chars.'
                                    : null,
                                onChanged: (val) => _pass = val,
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
                        ),
                        Height10,
                        Center(
                          child: InkWell(
                            onTap: () {
                              if (_formkey.currentState.validate()) {
                                print(_num);
                                print(_pass);
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 65, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: darkBlueColor,
                              ),
                              child: Text("Save",
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 21)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
