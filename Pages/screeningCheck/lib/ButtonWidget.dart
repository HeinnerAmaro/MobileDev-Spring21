import 'package:flutter/material.dart';

class RoundedButtons extends StatelessWidget {
  // This is a rounded button stateless widget.
  // This takes in 8 arguements in the constructor.
  // you can find out what it takes as arguements by
  // reading the code.

  final text,
      height,
      width,
      colorBackground,
      colorText,
      circularRadius,
      fontsize;
  final Function buttonFunction;

  // Below is the contructor. Constructors in Dart are named after
  // the parent class
  // NOTE for any number here, it takes DOUBLES not integers.
  RoundedButtons(
      this.text,
      this.fontsize,
      this.height,
      this.width,
      this.colorBackground,
      this.colorText,
      this.circularRadius,
      this.buttonFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        textColor: colorText,
        color: colorBackground,
        child: Container(
          alignment: Alignment(0.0, -0.2),
          child: Text(
            "$text",
            style: new TextStyle(fontSize: fontsize,
            fontFamily: "Be Vietnam"),
          ),
        ),
        onPressed: buttonFunction,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(circularRadius),
        ),
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final text,
      textColor,
      fontsize,
      borderRadius,
      color,
      height,
      width,
      alignment;

  RoundedBox(this.text, this.textColor, this.fontsize, this.borderRadius,
      this.color, this.height, this.width, this.alignment);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "$text",
          style: TextStyle(fontSize: fontsize, color: textColor),
        ),
      ),
    );
  }
}

class RoundedButtonsOutlined extends StatefulWidget {
  // This is a rounded button stateless widget.
  // This takes in 8 arguements in the constructor.
  // you can find out what it takes as arguements by
  // reading the code.

  final text,
      height,
      width,
      colorBackground,
      colorText,
      colorBorder,
      circularRadius,
      fontsize;
  final Function buttonFunction;

  // Below is the contructor. Constructors in Dart are named after
  // the parent class
  // NOTE for any number here, it takes DOUBLES not integers.
  RoundedButtonsOutlined(
      this.text,
      this.fontsize,
      this.height,
      this.width,
      this.colorBackground,
      this.colorText,
      this.colorBorder,
      this.circularRadius,
      this.buttonFunction
    );

  @override
  _RoundedButtonsOutlinedState createState() => _RoundedButtonsOutlinedState();
}

class _RoundedButtonsOutlinedState extends State<RoundedButtonsOutlined> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: OutlineButton(
        textColor: widget.colorText,
        color: widget.colorBackground,
        highlightElevation: 0,
        child: Container(
          alignment: Alignment(0.0, -0.2),
          child: Text(
            "${widget.text}",
            style: new TextStyle(fontSize: widget.fontsize,
            fontFamily: "Be Vietnam"),
          ),
        ),
        onPressed: widget.buttonFunction,
        highlightedBorderColor: widget.colorBorder,
        borderSide: BorderSide(color: widget.colorBorder, width: 2),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(widget.circularRadius),
        ),
      ),
    );
  }
}
