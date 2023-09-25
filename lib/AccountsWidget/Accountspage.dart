import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';

import 'package:onecredit/Commonwidget/Colors.dart' as Custom_color;




class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {


  final LocalStorage storage = new LocalStorage('onecredit_store');



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


        theme: finalbool ? _darkTheme : _lightTheme,
    
        home: Scaffold(
                    appBar: AppBar(
          
                leading: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                }, icon: Icon(Icons.arrow_circle_left_rounded,color: Colors.white,size: 40,),),
          backgroundColor: Custom_color.app_color,
          title: Text('Accounts',style: TextStyle(color: Colors.white),),
              ),


              body: Container(
                child: Column(
                  children: [

                    SizedBox(height: 80,),


                    Center(
                      child: Container(
                        height: height*0.2,
                        width: width*0.9,
                    
                        decoration:
                        BoxDecoration(
                                                         
                                                          color: Colors.orange,
                                                         
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

                        child: Column(
                          children: [
                            SizedBox(height: 8,),
                            Text('Amount Distributred',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 14,),
                            Text('Rs . 100000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),)
                          ],
                        ),
                        
                    
                      ),
                    ),






                                        SizedBox(height: 20,),


                    Center(
                      child: Container(
                        height: height*0.2,
                        width: width*0.9,
                    
                        decoration:
                        BoxDecoration(
                                                         
                                                          color: Colors.green,
                                                         
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

                                                child: Column(
                          children: [
                            SizedBox(height: 8,),
                            Text('Amount Collected',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 14,),
                            Text('Rs . 50000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),)
                          ],
                        ),
                        
                    
                      ),
                    ),








                    SizedBox(height: 20,),


                    Center(
                      child: Container(
                        height: height*0.2,
                        width: width*0.9,
                    
                        decoration:
                        BoxDecoration(
                                                         
                                                          color: Colors.red,
                                                         
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


                                                child: Column(
                          children: [
                            SizedBox(height: 8,),
                            Text('Amount Pending',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 14,),
                            Text('Rs . 50000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),)
                          ],
                        ),
                        
                    
                      ),
                    ),






                  ],
                ),
              ),
    
        ),
    
      ),
    );
  }
}