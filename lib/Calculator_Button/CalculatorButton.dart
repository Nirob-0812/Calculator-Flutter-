import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator_Button extends StatelessWidget {
  final String value;
  final int filcolor;
  final int txtcolor;
  final double fontsize;
  final Function output;

  Calculator_Button(
      {required this.value,
        required this.filcolor,
        required this.txtcolor,
        required this.fontsize,
        required this.output});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FlatButton(
            child: Text(
              value,
              style: GoogleFonts.rubik(
                  textStyle:
                  TextStyle(fontSize: fontsize, color: Color(txtcolor))),
            ),
            onPressed: () => output(value),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Color(filcolor),
          ),
        ));
  }
}
