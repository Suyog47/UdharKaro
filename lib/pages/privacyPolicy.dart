import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';



class PrivacyPolicy extends StatelessWidget {
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
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    Align(child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: backIcon), alignment: Alignment.centerLeft,),

                    height10,

                    Center(child: Text("Privacy Policy",
                      style:  headerWhiteTextStyle
                    ),
                    )
                  ],
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text("This privacy policy discloses the privacy practices for (website address). This privacy policy applies solely to information collected by this web site. It will notify you of the following: What personally identifiable information is collected from you through the web site, how it is used and with whom it may be shared. What choices are available to you regarding the use of your data. The security procedures in place to protect the misuse of you information. How you can correct any inaccuracies in the information.Information Collection, Use, and SharingWe are the sole owners of the information collected on this site. We only have access to collect information that you voluntarily give us via email orother direct contact from you. We will not sell or rent this information to anyone.",
                      style: TextStyle(fontSize: 18, letterSpacing: 2), softWrap: true,),
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
