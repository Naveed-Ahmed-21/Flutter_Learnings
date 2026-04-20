import 'package:flutter/material.dart';

void main() {
  runApp(My_Calc());
}
class My_Calc extends StatefulWidget{
  const My_Calc({super.key});

  @override
  State<My_Calc> createState() => _My_CalcState();
}

class _My_CalcState extends State<My_Calc> {
  double size=0;
  String inptVal="";
  String calcVal="";
  String operator="";

  @override
  Widget build(BuildContext context) {
    size =MediaQuery.of(context).size.width/5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [

            // 🔹 Display
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                inptVal,
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),

            // 🔹 This pushes buttons to bottom
            const Spacer(),

            // 🔹 Calculator Buttons
            Column(
              children: [
                Row(
                  children: [
                    calcBt('7', Colors.white38),
                    calcBt('8', Colors.white38),
                    calcBt('9', Colors.white38),
                    calcBt('/', Colors.orangeAccent),
                  ],
                ),
                Row(
                  children: [
                    calcBt('4', Colors.white38),
                    calcBt('5', Colors.white38),
                    calcBt('6', Colors.white38),
                    calcBt('*', Colors.orangeAccent),
                  ],
                ),
                Row(
                  children: [
                    calcBt('1', Colors.white38),
                    calcBt('2', Colors.white38),
                    calcBt('3', Colors.white38),
                    calcBt('-', Colors.orangeAccent),
                  ],
                ),
                Row(
                  children: [
                    calcBt('0', Colors.white38),
                    calcBt('.', Colors.white38),
                    calcBt('=', Colors.orangeAccent),
                    calcBt('+', Colors.orangeAccent),
                  ],
                ),
              ],
            ),

            // 🔹 Clear button bottom-la
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: calcBt('clear', Colors.black),
            ),
          ],
        ),
      ),
    );

  }

  Widget calcBt(String text,Color bgcolor){
    return InkWell(
      onTap: () {
        if (text == 'clear') {
          setState(() {
            inptVal = "";
            calcVal = "";
            operator = "";
          });
        }

        else if (text == '/' || text == '*' || text == '+' || text == '-') {
          if(inptVal.isEmpty) return;
          setState(() {
            calcVal = inptVal;
            inptVal = "";
            operator = text;
          });
        }

        else if (text == '=') {
          if (calcVal.isEmpty || inptVal.isEmpty) return;

          setState(() {
            double calc = double.parse(calcVal);
            double inpt = double.parse(inptVal);

            if (operator == "+") inptVal = (calc + inpt).toString();
            if (operator == "-") inptVal = (calc - inpt).toString();
            if (operator == "*") inptVal = (calc * inpt).toString();
            if (operator == "/") inptVal = (calc / inpt).toString();

            operator = "";
            calcVal = "";
          });
        }

        else if (text == '.') {
          if (!inptVal.contains('.')) {
            setState(() {
              inptVal += text;
            });
          }
        }

        else {
          setState(() {
            inptVal += text;
          });
        }
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: bgcolor,
          ),
          margin: EdgeInsets.all(9),
          alignment: Alignment.center,
          width:size,
          height:size,
          child: Text(text,style: TextStyle(
            color: Colors.white,fontSize:30,
          ),
          )
      ),
    );
  }
}