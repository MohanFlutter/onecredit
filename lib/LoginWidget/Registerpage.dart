import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:localstorage/localstorage.dart';
import 'package:onecredit/Loginwidget/reg2.dart';

class registerpage extends StatefulWidget {
  const registerpage({super.key});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {



  final LocalStorage storage = new LocalStorage('onecredit_store');

  

  TextEditingController username = TextEditingController();
  TextEditingController shopname = TextEditingController();
  TextEditingController shopaddress = TextEditingController();
  TextEditingController noofbranch = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController alternativenumber = TextEditingController();
  TextEditingController aadharnumber = TextEditingController();





  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/reg2.png'),fit: BoxFit.fill)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*0.07,
              ),
              Container(
                
                child: Row(
                  
                  children: [
                    SizedBox(
                      width: width*0.35,
                    ),
                    Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                    
                  ],
                ),
        
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.8,
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
        
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: height*0.04,
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                           
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
        
                          controller: shopname,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Shop Name",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
                          controller: shopaddress,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Shop Address",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
        
                          controller: noofbranch,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "No.of branches",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
        
                          controller: mobilenumber,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
        
                          controller: alternativenumber,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Alternative Number",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: TextField(
                          controller: aadharnumber,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Aadhar Number",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
                          ),
                        ),
                      ),
                    
                    
                          ),
                          
                          // SizedBox(
                          //   height: 25,
                          // ),
                    
                          // Row(
                          //   children: [
                          //     SizedBox(
                          //       width: width*0.2,
                          //     ),
                          //     Text('Aadhar',style: TextStyle(fontSize: 16),),
                          //     SizedBox(
                          //       width: width*0.15,
                          //     ),
                          //     Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                          //      ,)
                          //   ],
                          // ),
                          SizedBox(
                            height: 16,
                          ),
                    
                          Container(
                            width: width*0.3,
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
        
                                if(username.text.isEmpty){
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
        
                                else if(shopname.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter Shopname",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
        
                                else if(shopaddress.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter Shopaddress",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
                                else if(noofbranch.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter No.of.Branches",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
        
                                else if(mobilenumber.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter Mobile Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
                                else if(alternativenumber.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter Alternative Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
                                else if(aadharnumber.text.isEmpty){
                                  Fluttertoast.showToast(
          msg: "Enter Aadhar Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
            );
                                }
        
        
                                else{
        
                                  var Username=username.text;
                                  var Shopname=shopname.text;
                                  var Shopaddrss=shopaddress.text;
                                  var Noofbrancges=noofbranch.text;
                                  var Mobile=mobilenumber.text;
                                  var Alternate=alternativenumber.text;
                                  var Aadhar=aadharnumber.text;
        
        
                                  await storage.setItem('user_name', Username);
                                  await storage.setItem('shop_name', Shopname);
                                  await storage.setItem('shop_address', Shopaddrss);
                                  await storage.setItem('no_of_user', Noofbrancges);
                                  await storage.setItem('mobile_number', Mobile);
                                  await storage.setItem('alternative_number', Alternate);
                                  await storage.setItem('aadhar_number', Aadhar);
        
        
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => register2()));
        
                                }
        
        
        
        
        
                                
                          
                            }, child: Row(
                              children: [
                                Text('     Next    ',style: TextStyle(color: Colors.white),),
                               
                          
                              ],
                            )),
                          ),
        
        
                          SizedBox(height: 15,)
                        ]
                    
                    
                    
                                ),
                    ),
              ),
            ],
          ),
        ),
      ),

    ));
  }
}