import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';
import 'package:onecredit/Commonwidget/Colors.dart' as Custom_color;

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({super.key});

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {


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

        debugShowCheckedModeBanner: false,

        theme: finalbool ? _darkTheme : _lightTheme,


        home: Scaffold(
      appBar: AppBar(
          
                leading: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                }, icon: Icon(Icons.arrow_circle_left_rounded,color: Colors.white,size: 40,),),
          backgroundColor: Custom_color.app_color,
          title: Text('Service Enquiery',style: TextStyle(color: Colors.white),),
              ),


              body:

              ListView.builder(
                shrinkWrap: true,

                itemCount: 5,
                
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      // height: height*0.2,
                      width: width*0.9,
                      decoration:          



                      finalbool==true?

                      BoxDecoration(
                                                       
                                                        color:
                                                         const Color.fromARGB(255, 74, 72, 72),
                                                       
                                                        borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(10),
                                                            topRight: Radius.circular(10),
                                                            bottomLeft: Radius.circular(10),
                                                            bottomRight: Radius.circular(10)),
                                                        // boxShadow: [
                                                        //   BoxShadow(
                                                        //     color: Colors.grey.withOpacity(0.3),
                                                        //     spreadRadius: 3,
                                                        //     blurRadius: 3,
                                                        //     offset: Offset(
                                                        //         0, 1), // changes position of shadow
                                                        //   ),
                              
                                                        // ],
                      )

                      :
                      
                      
                      
                                                                       BoxDecoration(
                                                       
                                                        color:
                                                         Colors.white,
                                                       
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

                      child: Row(
                        children: [
                          Container(

                            height: height*0.25,
                                    width: width*0.35,

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0,top: 8),
                                  child: Container(
                                    height: height*0.15,
                                    width: width*0.3,
                                    // color: Colors.red,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/men.jpg'),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Text('Mohana Sundaram',style: TextStyle(fontWeight: FontWeight.bold),),
                                )),


                                TextButton(onPressed: (){

                                }, child: Text('6565654543'))
                              ],
                            ),
                          ),

                          SizedBox(width: 8,),


                          Container(
                            child: Flexible(child: Text('My Phone Has Camera And Mic Problem',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                          )
                        ],
                      ),
                    ),
                  );
                }
                
                )
              
              //  Container(
              //   child: ,
              // ),
        ),
      ),
    );
  }
}