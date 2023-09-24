import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

import 'package:onecredit/Commonwidget/Colors.dart' as Custom_color;
import 'package:onecredit/dashboardwidget/Dashboard.dart';

class EMIcalculator extends StatefulWidget {
  const EMIcalculator({super.key});

  @override
  State<EMIcalculator> createState() => _EMIcalculatorState();
}

class _EMIcalculatorState extends State<EMIcalculator> {


  final LocalStorage storage = new LocalStorage('onecredit_store');


  RangeValues _downpaymentRangeValues = const RangeValues(0, 0);
  RangeValues _loanamountRangeValues = const RangeValues(0, 0);
  RangeValues _tentureRangeValues = const RangeValues(0, 0);
  RangeValues _intrestRangeValues = const RangeValues(0, 0);





  var boolvalue;

var finalbool;



ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 4, 19, 99))
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
  

);




    @override
  void initState(){

    super.initState();
    boolvalue=storage.getItem('bool_value');

    setState(() {
      finalbool = boolvalue==null? false : boolvalue;
    });

  }
  




  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
    
    
        theme: finalbool ? _darkTheme : _lightTheme,
    
    
    
        home: Scaffold(
          appBar: AppBar(
          
                leading: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                }, icon: Icon(Icons.arrow_circle_left_rounded,color: Colors.white,size: 40,),),
          backgroundColor: Custom_color.app_color,
          title: Text('EMI Calculator',style: TextStyle(color: Colors.white),),
              ),
    
    
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                    
                      SizedBox(height: 10,),
                    
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Row(
                          children: [
                            Text('Total Amount',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          ],
                        ),
                      ),
                    
                    
                      SizedBox(height: 5,),
                    
                      Center(
                        child: Container(
                          height: height*0.05,
                          width: width*0.6,
                          decoration:
                    finalbool==true?
                                                            BoxDecoration(): 
                          BoxDecoration(
                                                           
                                                            color: Colors.white,
                                                           
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius.circular(10),
                                                                topRight: Radius.circular(10),
                                                                bottomLeft: Radius.circular(10),
                                                                bottomRight: Radius.circular(10)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.3),
                                                                spreadRadius: 3,
                                                                blurRadius: 3,
                                                                offset: Offset(
                                                                    0, 1), // changes position of shadow
                                                              ),
                                
                                                            ],
                          ),
                    
                    
                          child: Center(child: Text('10000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                      
                        ),
                      ),
                    
                      SizedBox(
                        height: 14,
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Dowm Payment',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                            Container(
                              height: height*0.05,
                              width: width*0.25,
                      
                              decoration:
                    
                              finalbool==true?
                                                            BoxDecoration():
                            BoxDecoration(
                                                             
                                                              color: Colors.white,
                                                             
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius.circular(10),
                                                                  topRight: Radius.circular(10),
                                                                  bottomLeft: Radius.circular(10),
                                                                  bottomRight: Radius.circular(10)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.grey.withOpacity(0.3),
                                                                  spreadRadius: 3,
                                                                  blurRadius: 3,
                                                                  offset: Offset(
                                                                      0, 1), // changes position of shadow
                                                                ),
                                  
                                                              ],
                            ),
                    
                            child: Center(child: Text('${_downpaymentRangeValues.end.round().toString()}  Rs',style: TextStyle(fontWeight: FontWeight.bold),)),
                            )
                          ],
                        ),
                      ),
                    
                    
                    
                    
                      RangeSlider(
                              values: _downpaymentRangeValues,
                              max: 50000,
                              min: 0,
                              divisions: 500,
                              labels: RangeLabels(
                  _downpaymentRangeValues.start.round().toString() + ' Rs',
                  _downpaymentRangeValues.end.round().toString() + ' Rs',
                              ),
                              onChanged: (RangeValues values) {
                  var range = RangeValues(0, values.end);
                  setState(() {
                    _downpaymentRangeValues = range;
                  });
                              },
                            ),
                    
                    
                    
                    
                    
                    
                            SizedBox(
                        height: 14,
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Loan Amount',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                            Container(
                              height: height*0.05,
                              width: width*0.25,
                      
                              decoration:
                    
                              finalbool==true?
                                                            BoxDecoration():
                            BoxDecoration(
                                                             
                                                              color: Colors.white,
                                                             
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius.circular(10),
                                                                  topRight: Radius.circular(10),
                                                                  bottomLeft: Radius.circular(10),
                                                                  bottomRight: Radius.circular(10)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.grey.withOpacity(0.3),
                                                                  spreadRadius: 3,
                                                                  blurRadius: 3,
                                                                  offset: Offset(
                                                                      0, 1), // changes position of shadow
                                                                ),
                                  
                                                              ],
                            ),
                    
                            child: Center(child: Text('${_loanamountRangeValues.end.round().toString()}  Rs',style: TextStyle(fontWeight: FontWeight.bold),)),
                            )
                          ],
                        ),
                      ),
                    
                    
                    
                    
                      RangeSlider(
                              values: _loanamountRangeValues,
                              max: 100000,
                              min: 0,
                              divisions: 100,
                              labels: RangeLabels(
                  _loanamountRangeValues.start.round().toString() + ' Rs',
                  _loanamountRangeValues.end.round().toString() + ' Rs',
                              ),
                              onChanged: (RangeValues values) {
                  var range = RangeValues(0, values.end);
                  setState(() {
                    _loanamountRangeValues = range;
                  });
                              },
                            ),
                    
                    
                    
                    
                    
                            SizedBox(
                        height: 14,
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tenure',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                            Container(
                              height: height*0.05,
                              width: width*0.25,
                      
                              decoration:
                    
                              finalbool==true?
                                                            BoxDecoration():
                            BoxDecoration(
                                                             
                                                              color: Colors.white,
                                                             
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius.circular(10),
                                                                  topRight: Radius.circular(10),
                                                                  bottomLeft: Radius.circular(10),
                                                                  bottomRight: Radius.circular(10)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.grey.withOpacity(0.3),
                                                                  spreadRadius: 3,
                                                                  blurRadius: 3,
                                                                  offset: Offset(
                                                                      0, 1), // changes position of shadow
                                                                ),
                                  
                                                              ],
                            ),
                    
                            child: Center(child: Text('${_tentureRangeValues.end.round().toString()}  Months',style: TextStyle(fontWeight: FontWeight.bold),)),
                            )
                          ],
                        ),
                      ),
                    
                    
                    
                    
                      RangeSlider(
                              values: _tentureRangeValues,
                              max: 12,
                              min: 0,
                              divisions: 12,
                              labels: RangeLabels(
                  _tentureRangeValues.start.round().toString() + ' Months',
                  _tentureRangeValues.end.round().toString() + ' Months',
                              ),
                              onChanged: (RangeValues values) {
                  var range = RangeValues(0, values.end);
                  setState(() {
                    _tentureRangeValues = range;
                  });
                              },
                            ),
                    
                    
                    
                    
                    
                    
                    
                            SizedBox(
                        height: 14,
                      ),
                    
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Interest',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                            Container(
                              height: height*0.05,
                              width: width*0.25,
                      
                              decoration:
                    
                              finalbool==true?
                                                            BoxDecoration():
                            BoxDecoration(
                                                             
                                                              color: Colors.white,
                                                             
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius.circular(10),
                                                                  topRight: Radius.circular(10),
                                                                  bottomLeft: Radius.circular(10),
                                                                  bottomRight: Radius.circular(10)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.grey.withOpacity(0.3),
                                                                  spreadRadius: 3,
                                                                  blurRadius: 3,
                                                                  offset: Offset(
                                                                      0, 1), // changes position of shadow
                                                                ),
                                  
                                                              ],
                            ),
                    
                            child: Center(child: Text('${_intrestRangeValues.end.round().toString()}  %',style: TextStyle(fontWeight: FontWeight.bold),)),
                            )
                          ],
                        ),
                      ),
                    
                    
                    
                    
                      RangeSlider(
                              values: _intrestRangeValues,
                              max: 100,
                              min: 0,
                              divisions: 100,
                              labels: RangeLabels(
                  _intrestRangeValues.start.round().toString() + ' %',
                  _intrestRangeValues.end.round().toString() + ' %',
                              ),
                              onChanged: (RangeValues values) {
                  var range = RangeValues(0, values.end);
                  setState(() {
                    _intrestRangeValues = range;
                  });
                              },
                            ),
                
                            SizedBox(height: 10,),
                
                
                
                
                            Container(
                              width: width*0.4,
                              child: ElevatedButton(
                  style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 31, 5, 176)),
                          
                                
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                                // side: BorderSide(color: Colors.red)
                              )
                            )
                          ),
                
                
                  onPressed: (){
                
                              }, child: Text('Calculate',style: TextStyle(color: Colors.white),)),
                            ),


                            SizedBox(height: 20,),
                            
                
                
                
                
                            Container(
                              height: height*0.15,
                              width: width*0.8,
                              decoration: BoxDecoration(
                                border: Border.all(color: Custom_color.app_color)
                              ),

                              child: Column(
                                children: [

                                  SizedBox(height: 15,),
                                  Text('Your EMI Amount is',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                                  SizedBox(height: 5,),
                                  Text('3000 Rs Per Month',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                                ],
                              ),
                            ),


                            SizedBox(height: 10,)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                            
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}