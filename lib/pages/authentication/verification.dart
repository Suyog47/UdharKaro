import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';

class verification extends StatefulWidget {
  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: blackColor,
                      size: 30,
                    ),
                  ),
                ),
                height30,
                Text('Verification',style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 35
                ),
                ),
                height60,
                height30,
                Text("""Enter the verification code we have sent you 
                on your mobile number.""",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 17
                ),
                ),
                height60,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("didn't receive code?",style: TextStyle(
                      color: black38,fontSize: 15,fontWeight: FontWeight.w500,
                     ),
                    ),
                    TextButton(
                      onPressed: (){

                      },
                      child: Text('Resend',
                        style: TextStyle(
                          color: Colors.red,fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                height30,
                ElevatedButton(
                  child: Text("Verify",style: size25TextStyle,),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xFF41C8F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    side: BorderSide(
                      color: Color(0xFF41C8F3),
                    ),
                    minimumSize: Size(120,50),
                  ),
                  //onPressed
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Color(0xFFFCF4F4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            height: 400,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 30, 12, 12),
                              child: Column(
                               children: [
                                 CircleAvatar(
                                   radius: 70,
                                   backgroundColor: Color(0xFFCAF8CE),
                                   child: CircleAvatar(
                                     radius: 55,
                                     backgroundColor: Color(0xFF5EE283),
                                     child: CircleAvatar(
                                       radius: 50,
                                       backgroundColor: Color(0xFFFBF2F2),
                                       child: Icon(Icons.check_outlined,color: Colors.green,
                                       size: 60,),
                                     ),
                                   ),
                                 ),
                                 height30,
                                 Text('Verified Successfully',
                                   style: size25TextStyle,
                                 ),
                                 height60,
                                 ElevatedButton(
                                   onPressed: (){
                                     Navigator.pushNamed(context,"/login");
                                   },
                                   child: Text("Go back to login",style: size20TextStyle,),
                                   style: ElevatedButton.styleFrom(
                                     onPrimary: Colors.white,
                                     primary: Color(0xFF41C8F3),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: new BorderRadius.circular(12.0),
                                     ),
                                     side: BorderSide(
                                       color: Color(0xFF41C8F3),
                                     ),
                                     minimumSize: Size(70,45),
                                   ),
                                 ),
                               ],
                              ),
                            ),
                          ),
                        );
                      }
                    );
                  },


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
