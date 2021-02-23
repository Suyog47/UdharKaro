import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                decoration: BoxDecoration(
                  color: HexColor("140B4F"), //Color(0x140B4F),
                ),
                child: Column(
                  children: [
                    Align(child: Icon(Icons.arrow_back,color: Colors.white, size: 30,), alignment: Alignment.centerLeft,),

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
                child: Column(
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Account Details", style: TextStyle(fontSize: 20),),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, "/accountdetails");
                      },
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/privacypolicy");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Privacy Policy", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/feedbackform");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Feedback Form", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/userlist");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Users List", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/aboutus");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("About Us", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Center(
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("140B4F"),
                    ),
                    child: Text("Logout", style: TextStyle(color: Colors.white, fontSize: 21)),
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
