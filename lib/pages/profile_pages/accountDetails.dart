import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  String _num = "9087564321",
      _email = "suyogamin11@gmail.com",
      _pass = "hitman_47",
      _category = "Personal Account";

  final _formKey = GlobalKey<FormState>();

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
                            child: backIconLight),
                      ),
                      height10,
                      Center(
                          child: Avatar(
                        img: "assets/profilebg.png",
                        radius: 45,
                      )),
                      height10,
                      Center(
                          child: Text(
                        "Suyog Amin",
                        style: h2_Light,
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PhoneTextField(
                          value: _num,
                          decoration: inputDecor,
                          label: "Phone Number",
                          callback: (value) {
                            setState(() => _num = value);
                          },
                        ),
                        height10,
                        EmailTextField(
                          value: _email,
                          decoration: inputDecor,
                          label: "Email",
                          callback: (value) {
                            setState(() => _email = value);
                          },
                        ),
                        height10,
                        height10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category", style: t14_Dark),
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
                        height10,
                        PasswordTextField(
                          value: _pass,
                          decoration: inputDecor,
                          label: "Password",
                          callback: (value) {
                            setState(() => _pass = value);
                          },
                        ),
                        height30,
                        Center(
                            child: SubmitButton(
                          text: "Save",
                          width: 300,
                          height: 50,
                          elevation: 0,
                          color: darkBlueColor,
                          formKey: _formKey,
                          callback: () {
                            print(_num);
                            print(_email);
                            print(_pass);
                          },
                        ))
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
