import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {

  List _str = ["Ayush Singhal", "Babu", "Deepanshu Khanna", "Raj Ranjan", "Suyog Amin"];
  String _search;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  color: HexColor("140B4F"), //Color(0x140B4F),
                ),
                child: Column(
                  children: [
                    Align(child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back,color: Colors.white, size: 30,)), alignment: Alignment.centerLeft,),

                    SizedBox(height: 10,),

                    Center(child: Text("Users List", style: TextStyle(color: Colors.white, fontSize: 30),))
                  ],
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index){
                        return Column(
                          children: [
                            Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage("assets/profilebg.png"), radius: 25,
                                ),
                                title: Text(_str[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.symmetric(vertical: 15),
                            ),
                            Divider(height: 2, color: Colors.grey),
                          ],
                        );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
