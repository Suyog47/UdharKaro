import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = true;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
                  ),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("UDHAR KARO", style: TextStyle(fontSize: 32,)),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.blueAccent, width: 2.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add, color: Colors.blue, size: 15,),
                                Text("ADD", style: TextStyle(color: Colors.blue),),
                              ],
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(angle: 3.142/4,  child: Icon(Icons.arrow_upward, color: Colors.white, size: 20,)),
                                SizedBox(height: 5,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Rs.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                    SizedBox(width: 2,),
                                    Text("1200", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text("to send", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(angle: 3.142/4, child: Icon(Icons.arrow_downward, color: Colors.white, size: 20,)),
                                SizedBox(height: 5,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Rs.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18 )),
                                    SizedBox(width: 2,),
                                    Text("2500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text("to receive", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SliderButton(
                                action: (){
                                  setState(() => status = !status );
                                },
                                label: Text(""),
                                icon: Icon(Icons.info, size: 10),
                                backgroundColor: (status) ? Colors.blueAccent : Colors.green,
                                vibrationFlag: false,
                                dismissible: false,
                                shimmer: false,
                                buttonSize: 15,
                                width: 30,
                                height: 15,
                              ),

                              SizedBox(width: 5,),

                              Text((status) ? "10 User(s)" :  "9 User(s)", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Icon(Icons.unfold_more),
                        ],
                      ),
                    ],
                  ),
                ),

                //SizedBox(height: 20,),

                Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return Card(
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text("Rs.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                              SizedBox(width: 2,),
                                              Text("1500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Text((status) ? "to Agarwal Sweets" : "from Agarwal Sweets", style: TextStyle(fontSize: 12),)
                                        ],
                                      ),
                                      Icon(Icons.person, size: 25,),
                                    ],
                                  ),

                                  SizedBox(height: 20),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("2 January", style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 5),
                                              Text("Last Transaction On", style: TextStyle(fontSize: 10),)
                                            ],
                                          ),
                                        ],
                                      ),

                                      (status) ?
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.blueAccent, width: 2.0),
                                        ),
                                        child: Row(
                                          children: [
                                            Text("PAY", style: TextStyle(color: Colors.blueAccent),),
                                            Transform.rotate(angle: 3.142/4,  child: Icon(Icons.arrow_upward, color: Colors.blueAccent, size: 20,)),
                                          ],
                                        ),
                                      ) :

                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Colors.green, width: 2.0),
                                        ),
                                        child: Text("ALERT", style: TextStyle(color: Colors.green),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),

          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            width: MediaQuery.of(context).devicePixelRatio,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){ setState(() => _currentIndex = 0); },
                  child: (_currentIndex == 0) ?
                  Transform.scale(scale: 1.4, child: Icon(Icons.home, color: Colors.red,)) :
                  Icon(Icons.home, color: Colors.black,),
                ),

                InkWell(
                    onTap: (){ setState(() => _currentIndex = 1); },
                    child: (_currentIndex == 1) ?
                    Transform.scale(scale: 1.4, child: Icon(Icons.add_alert, color: Colors.red,)) :
                    Icon(Icons.add_alert, color: Colors.black,)),

                InkWell(
                    onTap: (){
                      setState(() => _currentIndex = 2);
                      Navigator.pushNamed(context, "/profilepage");
                      },
                    child: (_currentIndex == 2) ?
                    Transform.scale(scale: 1.4, child: Icon(Icons.account_circle, color: Colors.red,)) :
                    Icon(Icons.account_circle, color: Colors.black,)),
              ],
            ),
          )
//        BottomNavigationBar(
//          items: [
//            BottomNavigationBarItem(
//              icon: Icon(Icons.home, color: Colors.black,),
//              title: Text("Home", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
//            ),
//            BottomNavigationBarItem(
//                icon: Icon(Icons.add_alert, color: Colors.black,),
//                title: Text("Alert", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
//            ),
//            BottomNavigationBarItem(
//                icon: Icon(Icons.person, color: Colors.blue,),
//                title: Text("Profile", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
//            ),
//          ],
//          onTap: (index){
//            setState(() => _currentIndex = index);
//          },
//          currentIndex: _currentIndex,
//          type: BottomNavigationBarType.fixed,
//          selectedFontSize: 40,
//          selectedItemColor: Colors.red,
//          iconSize: 24,
//        ),
      ),
    );
  }
}
