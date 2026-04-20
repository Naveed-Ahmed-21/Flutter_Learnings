import 'package:flutter/material.dart';

void main(){
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
  String calcval="";
  String operator="";

  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size.width/5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Text(inptVal,style: TextStyle(fontSize: 90,color: Colors.white),),
              ),

            ),

            Spacer(flex: 2,),
            Column(
              children: [
                Row(
                  children: [
                    calcBt('7', Colors.white38),
                    calcBt('8', Colors.white38),
                    calcBt('9', Colors.white38),
                    calcBt('/', Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calcBt('4', Colors.white38),
                    calcBt('5', Colors.white38),
                    calcBt('6', Colors.white38),
                    calcBt('*', Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calcBt('1', Colors.white38),
                    calcBt('2', Colors.white38),
                    calcBt('3', Colors.white38),
                    calcBt('-', Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calcBt('0', Colors.white38),
                    calcBt('.', Colors.white38),
                    calcBt('=', Colors.orange),
                    calcBt('+', Colors.orange)
                  ],
                ),
              ],
            ),
            calcBt("Clear", Colors.black)
          ],
        ),
      ),
    );
  }
  Widget calcBt(String text , Color btclr){
    return InkWell(
      onTap: (){
        if(text =="Clear"){
          setState(() {
            inptVal="";
            calcval="";
          });
        }
        else if(text=="/" || text=="*" || text=="-" || text=="+" ){

          setState(() {
            operator=text;
            calcval=inptVal;
            inptVal="";
          });
        }
        else if(text=="="){
          setState(() {
            double inpt=double.parse(inptVal);
            double calc=double.parse(calcval);
            if(operator=="+") inptVal=(calc+inpt).toStringAsFixed(2);
            if(operator=="-") inptVal=(calc-inpt).toStringAsFixed(2);
            if(operator=="*") inptVal=(calc*inpt).toStringAsFixed(2);
            if(operator=="/") inptVal=(calc/inpt).toStringAsFixed(2);
            operator="";
            calcval="";
          });
        }
        else if(text=="."){
          setState(() {
            inptVal=inptVal+text;
          });
        }
        else{
          setState(() {
            inptVal=inptVal+text;
          });
        }
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: btclr,
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