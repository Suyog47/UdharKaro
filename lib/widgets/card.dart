import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'circularAvatar.dart';

//UserListCard
//HomeCard
//UserDetails
//NotificationCard

class UserListCard extends StatelessWidget {
  final List str;
  final int itemIndex;

  UserListCard({
    @required this.str,
    @required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Avatar(
              img: str[itemIndex]["pic"],
              radius: 25,
            ),
            title: Text(
              str[itemIndex]["name"],
              style: t18_Dark,
            ),
          ),
          elevation: 0,
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        divider,
      ],
    );
  }
}

class HomeCard extends StatelessWidget {
  final List str;
  final int type;
  final int itemIndex;

  HomeCard({@required this.str, @required this.type, @required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigate().toUserDetails(
            context, {"name": str[itemIndex]["vendor"], "type": type});
      },
      child: Card(
        margin: EdgeInsets.only(
            left: 5,
            right: 5,
            top: 10,
            bottom: (itemIndex == (str.length - 1) ? 80 : 10)),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 15),
             child: ListTile(
               leading: Avatar(
                 img: str[itemIndex]["pic"],
                 radius: 25,
               ),
               title: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     str[itemIndex]["vendor"],
                     style: t20_Dark,
                   ),
                   height10,
                   height5,
                   Text(
                     "Last Transaction On",
                     style: TextStyle(fontSize: 12, color: greyColor),
                   ),
                 ],
               ),
               //subtitle:
               trailing: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   width2,
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text("Rs.", style: t16_Dark),
                       Text(str[itemIndex]["price"], style: t28_Dark,)
                     ],
                     mainAxisSize: MainAxisSize.min,
                   ),
                   height5,
                   Text(
                     str[itemIndex]["lastTransaction"],
                     style: TextStyle(fontSize: 12, color: greyColor),
                   ),
                 ],
               ),
             ),
           ),
      ),
    );
  }
}

class UserDetailCard extends StatelessWidget {
  final List str;
  final int itemIndex;

  UserDetailCard({@required this.str, @required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          elevation: 0,
          margin: EdgeInsets.only(top: 5, bottom: (itemIndex == (str.length - 1) ? 70 : 5)),
          child: ListTile(
            leading: Avatar(
              img: str[itemIndex]["pic"],
              radius: 25,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (str[itemIndex]["type"] == 1) ? "Send" : "Received",
                  style: h4_Dark,
                ),
                height5,
              ],
            ),
            subtitle: Text(
              str[itemIndex]["date"],
              style: TextStyle(color: greyColor, fontSize: 12),
            ),
            trailing: (str[itemIndex]["type"] == 1)
                ? Text(
              "- Rs." + str[itemIndex]["price"].toString(),
              style: minusPriceTextStyle,
            )
                : Text(
              "+ Rs." + str[itemIndex]["price"].toString(),
              style: plusPriceTextStyle,
            ),
          ),
        ));
  }
}

class NotificationCard extends StatelessWidget {
  final List str;
  final int itemIndex;

  NotificationCard({@required this.str, @required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 0,
      child: ListTile(
        leading: Avatar(
          img: str[itemIndex]["pic"],
          radius: 25,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (str[itemIndex]["type"] == 1) ? "To" : "From",
              style: t12_Dark,
            ),
            Text(
              str[itemIndex]["name"],
              style: t18_Dark,
            ),
            height5,
          ],
        ),
        subtitle: Text(
          str[itemIndex]["date"],
          style: TextStyle(color: greyColor, fontSize: 12),
        ),
        trailing: (str[itemIndex]["type"] == 1)
            ? Text(
                "- Rs." + str[itemIndex]["price"].toString(),
                style: minusPriceTextStyle,
              )
            : Text(
                "+ Rs." + str[itemIndex]["price"].toString(),
                style: plusPriceTextStyle,
              ),
      ),
    );
  }
}
