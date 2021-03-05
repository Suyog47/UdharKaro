import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/api/user.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'circularAvatar.dart';

//UserListCard
//HomeCard
//UserDetails
//NotificationCard

class UserListCard extends StatelessWidget {
  final List<user> str;
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
              img: str[itemIndex].pic,
              radius: 25,
            ),
            title: Text(
              str[itemIndex].name,
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
                          Text("Rs.", style: h4_Dark),
                          width2,
                          Text(str[itemIndex]["price"], style: h3_Dark),
                        ],
                      ),
                      height5,
                      Text(
                        ((type == 1) ? "to " : "from ") +
                            str[itemIndex]["vendor"],
                        style: t12_Dark,
                      )
                    ],
                  ),
                  Avatar(
                    img: str[itemIndex]["pic"],
                    radius: 25,
                  ),
                ],
              ),
              height10,
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str[itemIndex]["lastTransaction"],
                            style: t14_Dark,
                          ),
                          height5,
                          Text(
                            "Last Transaction On",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                  (type == 1)
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: lightBlueColor, width: 2.0),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "PAY",
                                style: TextStyle(color: lightBlueColor),
                              ),
                              Transform.rotate(
                                  angle: 3.142 / 4,
                                  child: upArrowLightBlueIcon),
                            ],
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: lightGreenColor, width: 2.0),
                          ),
                          child: Text(
                            "ALERT",
                            style: TextStyle(color: lightGreenColor),
                          ),
                        )
                ],
              )
            ],
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
      margin: EdgeInsets.symmetric(vertical: 5),
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
