import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {

  bool _enable = false;
  String _num = "8879438873", _pass = "sa1147";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                  decoration: BoxDecoration(
                    color: HexColor("140B4F"), //Color(0x140B4F),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(onTap: (){Navigator.pop(context);},
                              child: Icon(Icons.arrow_back,color: Colors.white, size: 30,)),

                          FlatButton.icon(onPressed: (){
                            setState(() {
                              _enable = !_enable;
                            });
                            }, icon: Icon(Icons.edit), label: Text("Edit"), color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                          ),)
                        ],
                      ),

                      SizedBox(height: 10,),

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profilebg.png"), radius: 45,
                        ),
                      ),

                      SizedBox(height: 10,),

                      Center(child: Text("Suyog Amin", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40),))
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone", style: TextStyle(color: Colors.grey, fontSize: 16),),
                            TextFormField(
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              initialValue: _num,
                              enabled: _enable,
                              maxLength: 10,
                              validator: (val) {
                                if(val.length == 10 && int.parse(val[0]) >= 7 ){
                                  return null;
                                }
                                return "Enter valid phone number";
                              },
                              cursorColor: Colors.red,
                              onChanged: (val) => _num = val,
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category", style: TextStyle(color: Colors.grey, fontSize: 16),),
                            SizedBox(height: 10,),
                            Text("Business Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),

                        SizedBox(height: 30,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Password", style: TextStyle(color: Colors.grey, fontSize: 16),),
                            TextFormField(
                              initialValue: _pass,
                              enabled: _enable,
                              validator: (val) => val.length < 6 || val.length > 20 ? 'Password should be between 6 to 20 chars.' : null,
                              cursorColor: Colors.red,
                              onChanged: (val) => _pass = val,
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                      Center(
                        child: InkWell(
                          onTap: (){
                            if(_formkey.currentState.validate()) {
                              print(_num);
                              print(_pass);
                            }
                          },
                          child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: HexColor("140B4F"),
                                  ),
                                  child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 21)),
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
