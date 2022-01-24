import 'package:calculator/Calculator_Button/CalculatorButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatePage extends StatefulWidget {
  static const route = 'Sixth';

  const CalculatePage({Key? key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  int fstnum = 0;
  int scndnum = 0;
  String show_display = '';
  String result = '';
  String oparetion = '';
  String history = '';
  double dfstnum = 0;
  double dscndnum = 0;
  String show_dvalue = '';
  String dhistory = '';
  String dvalue = '';

  void cal_control(String show_out) {
    print(show_out);
    bool ok = false;
    if (show_out == 'AC') {
      fstnum = 0;
      scndnum = 0;
      show_display = '';
      history = '';
      result = '';
    } else if (show_out == 'C') {
      fstnum = 0;
      scndnum = 0;
      show_display = '';
      result = '';
    } else if (show_out == '+' ||
        show_out == '-' ||
        show_out == 'X' ||
        show_out == '/') {
      fstnum = int.parse(show_display);
      result = '';
      oparetion = show_out;
    } else if (show_out == '=') {
      if (oparetion == '+') {
        scndnum = int.parse(show_display);
        result = (fstnum + scndnum).toString();
        history = fstnum.toString() + oparetion.toString() + scndnum.toString();
      } else if (oparetion == '-') {
        scndnum = int.parse(show_display);
        result = (fstnum - scndnum).toString();
        history = fstnum.toString() + oparetion.toString() + scndnum.toString();
      } else if (oparetion == 'X') {
        scndnum = int.parse(show_display);
        result = (fstnum * scndnum).toString();
        history = fstnum.toString() + oparetion.toString() + scndnum.toString();
      } else if (oparetion == '/') {
        scndnum = int.parse(show_display);
        if (fstnum % scndnum == 0) {
          result = (fstnum / scndnum).toStringAsFixed(0).toString();
        } else {
          result = (fstnum / scndnum).toStringAsFixed(2).toString();
        }
        history = fstnum.toString() + oparetion.toString() + scndnum.toString();
      }
    } else {
      result = int.parse(show_display + show_out).toString();
    }
    setState(() {
      show_display = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Calculator')),
          ),
          backgroundColor: Colors.brown.shade400,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        color: Colors.grey.shade800, fontSize: 25),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    result,
                    style: GoogleFonts.rubik(fontSize: 40),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Calculator_Button(
                    value: 'AC',
                    filcolor: 0xffff8000,
                    txtcolor: 0xff000000,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: 'C',
                    filcolor: 0xffff8000,
                    txtcolor: 0xff000000,
                    fontsize: 30,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: 'DL',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '/',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 25,
                    output: cal_control,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Calculator_Button(
                    value: '7',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '8',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '9',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: 'X',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 25,
                    output: cal_control,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Calculator_Button(
                    value: '4',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '5',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '6',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '-',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 50,
                    output: cal_control,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Calculator_Button(
                    value: '1',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '2',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '3',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '+',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 35,
                    output: cal_control,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Calculator_Button(
                    value: '0',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 25,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '.',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 40,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '00',
                    filcolor: 0xff1e035e,
                    txtcolor: 0xffe9f0ee,
                    fontsize: 22,
                    output: cal_control,
                  ),
                  Calculator_Button(
                    value: '=',
                    filcolor: 0xffe0a40b,
                    txtcolor: 0xff000000,
                    fontsize: 40,
                    output: cal_control,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

// if (show_out == 'AC') {
// dfstnum = 0;
// dscndnum = 0;
// show_display = '';
// history = '';
// dvalue = '';
// } else if (show_out == 'C') {
// dfstnum = 0;
// dscndnum = 0;
// show_dvalue = '';
// dvalue = '';
// } else if (show_out == '+' ||
// show_out == '-' ||
// show_out == 'X' ||
// show_out == '/') {
// dfstnum = double.parse(show_display);
// dvalue='';
// oparetion = show_out;
// } else if (show_out == '=') {
// if (oparetion == '+') {
// dscndnum = double.parse(show_display);
// dvalue= (dfstnum + dscndnum).toString();
// history =
// dfstnum.toString() + oparetion.toString() + dscndnum.toString();
// }
// else if (oparetion == '-') {
// dscndnum = double.parse(show_display);
// dvalue= (dfstnum - dscndnum).toString();
// history =
// dfstnum.toString() + oparetion.toString() + dscndnum.toString();
// }
// else if (oparetion == 'X') {
// dscndnum = double.parse(show_display);
// dvalue= (dfstnum * dscndnum).toString();
// history =
// dfstnum.toString() + oparetion.toString() + dscndnum.toString();
// }
// else if (oparetion == '/') {
// dscndnum = double.parse(show_display);
// dvalue= (dfstnum / dscndnum).toString();
// history =
// dfstnum.toString() + oparetion.toString() + dscndnum.toString();
// }
//
// } else {
// dvalue =
// double.parse(show_display + show_out).toStringAsFixed(0).toString();
// }
