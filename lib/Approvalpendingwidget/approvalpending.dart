import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';
import 'package:onecredit/Commonwidget/Colors.dart' as Custom_color;

class Approvalpending extends StatefulWidget {
  const Approvalpending({super.key});

  @override
  State<Approvalpending> createState() => _ApprovalpendingState();
}

class _ApprovalpendingState extends State<Approvalpending> {




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
        title: Text('Approval Pending',style: TextStyle(color: Colors.white),),
            ),
    
    
            body: Container(
              child: Column(
                children: [
                  SizedBox(height: 12,),
                  Center(
                    child: Container(
                      height: height*0.79,
                      width: width*0.9,
                      decoration:

                      finalbool==true?

                      BoxDecoration(
                                                       
                                                        color: 
                                                      

                                                      

                                                        Color.fromARGB(255, 112, 109, 109),                   
                                                                                            
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
    
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Approval Pending : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                TextButton(onPressed: (){
                          
                                }, child: Text('Veiw All'))
                              ],
                            ),
                          ),
    
                          Container(
                            height: height*0.69,
                            width: width*0.9,
    
                            child: GridView.builder(
    
                              physics:
                                                NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns in the grid
      // crossAxisSpacing: 5.0, // Spacing between columns
      // mainAxisSpacing: 5.0, // Spacing between rows
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
      // Create a widget for each item in the list
    
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          
          height: height*0.18,
          width: width*0.23,
    
          decoration:


                                finalbool==true?

                      BoxDecoration(
                                                       
                                                        color: 
                                                      

                                                      

                                                        Color.fromARGB(255, 122, 121, 121),
                                                       
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
    
                      child: Column(
                        children: [
                          // SizedBox(height: 2,),
                          Container(
                            height: height*0.13,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/second.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Text('Mohan',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Cusid: 234')
                        ],
                      ),
          
        ),
      );
    
    
      // return Card(
      //   elevation: 5.0,
      //   child: Center(
      //     child: Text('hii'),
      //   ),
      // );
      },
    ),
                          )
    
    
    
    
    
    
                          
                        ],
                      ),
                      
    
    
                      // child: 
                      
                      
                      
    
                    ),
                  ),
                  SizedBox(height: 12,),
    
    
    
                  Text('Total No.of Pending Approvals : 8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                ],
              ),
            ),
        ),
      ),
    );
  }
}