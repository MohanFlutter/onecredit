import 'package:flutter/material.dart';

import 'package:onecredit/Commonwidget/Colors.dart' as Custom_color;
import 'package:onecredit/LoginWidget/Loginpage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {



  int professionselectedValue = 0;


  int maritalselectedValue = 0;


  bool _isChecked = false;


  TextEditingController cusname = TextEditingController();
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
    
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
          }, icon: Icon(Icons.arrow_circle_left_rounded,color: Colors.white,size: 40,),),
    backgroundColor: Custom_color.app_color,
    title: Text('Add Customer',style: TextStyle(color: Colors.white),),
        ),


        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
          
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text('Customer Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
          
                SizedBox(height: 12,),
          
          
          
          
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text('Customer Photo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child:
                        
                         Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                             ,)
                      ),
                    )
                  ],
                ),
          
          
                SizedBox(height: 12,),
          
          
          
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Center(child: Text('Residental Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          maxLines: null,
              keyboardType: TextInputType.multiline,
          
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
          
          
                SizedBox(height: 12,),
          
          
          
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Center(child: Text('Permenant Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          maxLines: null,
              keyboardType: TextInputType.multiline,
          
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
          
                SizedBox(height: 12,),
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
          
                SizedBox(height: 12,),
          
          
          
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text('Alternate Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
                SizedBox(height: 12,),
          
          
          
          
                Row(
                          
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
          
          
                  
                  Text('Profession',style: TextStyle(fontWeight: FontWeight.bold),),
                  Radio(
            value: 1,
            groupValue: professionselectedValue,
            onChanged: (value) {
              setState(() {
                professionselectedValue = value!;
              });
            },
                  ),
                  Text('Business'),
                  Radio(
            value: 2,
            groupValue: professionselectedValue,
            onChanged: (value) {
              setState(() {
                professionselectedValue = value!;
              });
            },
                  ),
                  Text('Employee'),
                ],
              ),
          
          
          
          
          
          
              SizedBox(height: 12,),
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text("Father's Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          // keyboardType: TextInputType.phone,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          
          
          
          
          
          
          
                SizedBox(height: 12,),
          
          
          
          
                Row(
                          
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
          
          
                  
                  Text('Marital Status',style: TextStyle(fontWeight: FontWeight.bold),),
                  Radio(
            value: 1,
            groupValue: maritalselectedValue,
            onChanged: (value) {
              setState(() {
                maritalselectedValue = value!;
              });
            },
                  ),
                  Text('Married'),
                  Radio(
            value: 2,
            groupValue: maritalselectedValue,
            onChanged: (value) {
              setState(() {
                maritalselectedValue = value!;
              });
            },
                  ),
                  Text('Single'),
                ],
              ),
          
          
          
          
              maritalselectedValue==0 ||maritalselectedValue==2?
              Container(
          
              )
          
              :
          
          
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text("Hus/Wife 's Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          // keyboardType: TextInputType.phone,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),




                SizedBox(height: 12,),
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text("Email Id",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),





                SizedBox(height: 12,),
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text("Adhaar No",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          





          SizedBox(height: 12,),
          
          
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0),
                      child: Container(
                        width: width*0.33,
                        // height: height*0.1,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Center(child: Text("PAN No",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ],
                        ),
          
                      ),
                    ),
          
                    SizedBox(width: 14,),
                    Container(
                      width: width*0.6,
                    
                      // height: height*0.06,
                      // color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: TextField(
                          // keyboardType: TextInputType.phone,
                          // controller: cusname,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),





                Padding(
                         padding: const EdgeInsets.only(left:20.0),
                         child: CheckboxListTile(
                       
                                             controlAffinity: ListTileControlAffinity.leading,
                       
                                     title: Row(
                                       children: [
                                         Text('Accepted ',style: TextStyle(fontSize: 13),),
                                         TextButton(onPressed: (){
                       
                       
                       
                       
                                         }, child:
                                         
                                         
                                          Text('Terms & Condition',style: TextStyle( color:Color.fromARGB(255, 0, 34, 186),fontSize: 13,decoration: TextDecoration.underline)))
                                       ],
                                     ),
                                     value: _isChecked,
                                     onChanged: (newValue) {
                                       setState(() {
                                         _isChecked = newValue!;
                                       });
                                     },
                                   ),
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
                        
                            
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
                        
                          }, child: Row(
                            children: [
                              Text('  Register  ',style: TextStyle(color: Colors.white),),
                             
                        
                            ],
                          )),
                        ),


                        SizedBox(height: 14,)

          
          
          
          
          
          
          
          
          
          
          
                
          
          
          
          
          
          
              ],
            ),
          ),

        ),
      ),
    );
  }
}