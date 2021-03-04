import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class RadioButton extends StatefulWidget {
  final List str;
  final Function callback;

  const RadioButton({
    @required this.str,
    @required this.callback
  });

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String group = "Somewhat";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 38,
            child: new ListTile(
              title: Text(
                widget.str[index],
                style: radioButtonTextStyle,
              ),
              leading: Radio(
                  value: widget.str[index],
                  groupValue: group,
                  onChanged: (value) {
                    setState(() {
                      group = value;
                    });
                    widget.callback(value);
                  }),
            ),
          );
        });
  }
}
