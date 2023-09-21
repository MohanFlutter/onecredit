import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:onecredit/LoginWidget/api.dart';
import 'package:onecredit/Loginwidget/Registerpage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {

    TextEditingController Username = TextEditingController();
    TextEditingController password = TextEditingController();



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;




    return SafeArea(
      child: Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/back.jpeg'),fit: BoxFit.fill)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height*0.2,
            ),
      
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:28.0),
                child: Row(
                  children: [
                    Text("LET'S BEGIN !",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),
                  ],
                ),
              ),
            ),
      
      
            Container(
              height: height*0.1,
            ),
      
      
            Container(
              height: height*0.5,
              width: width*0.9,
              decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 228, 242),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 218, 219, 237).withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
      
                    child: Column(
                      children: [
                        Container(
                          height: height*0.07,
                        ),
      
      
                        Container(
                          height: height*0.07,
                          width: width*0.8,
      
                          decoration: BoxDecoration(
                            color: Colors.white,
                            
                      // color: Color.fromARGB(255, 229, 228, 242),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 18, 18, 19).withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
      
                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: TextField(
                        controller: Username,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: Colors.black,),
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
      
      
                        ),
      
      
                        SizedBox(
                          height: 25,
                        ),
      
      
      
      
      
      
      
      
      
      
                        Container(
                          height: height*0.07,
                          width: width*0.8,
      
                          decoration: BoxDecoration(
                            color: Colors.white,
                            
                      // color: Color.fromARGB(255, 229, 228, 242),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 18, 18, 19).withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
      
                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key,color: Colors.black,),
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
      
      
                        ),
      
      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
      
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:12.0),
                              child: TextButton(onPressed: (){
                            
                              }, child: Text('Forgot Password ?')),
                            ),
                          ],
                        ),
      
      
      
                        SizedBox(height: 15,),
      
      
      
      
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
                        
                            
                            onPressed: ()async{
      
      
      
                              if(Username.text.isEmpty){
      
                                Fluttertoast.showToast(
            msg: "Enter Username",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
      
      
                              }
      
      
                              else if(password.text.isEmpty){

                                
                                Fluttertoast.showToast(
            msg: "Enter Password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );


                              }
      
      
                              else{
                                var data={
                                  'username':Username.text,
                                  'password':password.text,
                                };
      
                                var response =await loginapi().login(data);
                                //  var result = response[''];
      
                              }
      
      
      
      
      
                              Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                        
                          }, child: Row(
                            children: [
                              Text('     Login    ',style: TextStyle(color: Colors.white),),
                              Icon(Icons.arrow_circle_right_outlined,color: Colors.white,)
                        
                            ],
                          )),
                        ),
      
      
                        Row(
                          children: [
                            SizedBox(width: 60,),
      
                            Text("Dont't Have An Account ?"),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => registerpage(),));
      
                            }, child: Text('Register'))
                          ],
                        )
      
      
      
      
      
      
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child:
                          
                        //    Material(
      
                            
                        //     child: TextField(
                        //     decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(40.0),
                        //       ),
                        //       filled: true,
                        //       hintStyle: TextStyle(color: Colors.grey[800]),
                        //       hintText: "Type in your text",
                        //       fillColor: Colors.white70,
                        //     ),
                        //                         ),
                        //   ),
                        // )
      
                      ],
                    ),
            )
          ],
        ),
      ),
    ),
      ),
    );
  }
}