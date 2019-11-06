import 'package:flutter/material.dart';

class BottomBorderButton extends StatefulWidget {
  final IconData icon;
  final String text;

  const BottomBorderButton({Key key, this.icon, this.text}) : super(key: key);

  @override
  _BottomBorderButtonState createState() => _BottomBorderButtonState();
}

class _BottomBorderButtonState extends State<BottomBorderButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Icon(this.widget.icon), Text(this.widget.text)],
    );
  }
}
