import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FeedbackForm2 extends StatefulWidget {
  @override
  _FeedbackForm2State createState() => _FeedbackForm2State();
}

class _FeedbackForm2State extends State<FeedbackForm2> {

  String _msg = "";

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

                   Center(child: Text("Feedback Form", style: TextStyle(color: Colors.white, fontSize: 30),))
                 ],
               ),
             ),

             Flexible(
               child: SingleChildScrollView(
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                   child: Column(
                     children: [
                       Text("Anything else you would like to share with us about our mobile app", style: TextStyle(fontSize: 18), softWrap: true, textAlign: TextAlign.center,),

                       SizedBox(height: 30,),

                       TextFormField(
                         style: TextStyle(fontSize: 18),
                         cursorColor: Colors.red,
                         onChanged: (val) => _msg = val,
                         minLines: 8,
                         maxLines: 12,
                       ),
                     ],
                   ),
                 ),
               ),
             ),

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
                   child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 21)),
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
