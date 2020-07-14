import 'package:flutter/material.dart';

// Class to Create a Button with a Border Radius to call every time I need a button with these properties
class RoundedButton extends StatelessWidget {
  // Custom properties to my button
  RoundedButton({this.color, this.buttonTitle, @required this.onPressed});

  final Color color;
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
