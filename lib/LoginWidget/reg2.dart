import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localstorage/localstorage.dart';
import 'package:onecredit/Loginwidget/Loginpage.dart';
import 'package:onecredit/Loginwidget/Registerpage.dart';
import 'package:onecredit/dashboardwidget/Dashboard.dart';


import 'package:http/http.dart' as http;

class register2 extends StatefulWidget {
  const register2({super.key});

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {


  final LocalStorage storage = new LocalStorage('onecredit_store');


  TextEditingController PAN = TextEditingController();
  TextEditingController GST = TextEditingController();
  TextEditingController Password= TextEditingController();




  int selectedValue = 0;
   bool _isChecked = false;


   var _imageFile;

Future<void> _pickImage(ImageSource source) async {
  final picker = ImagePicker();
  final pickedImage = await picker.pickImage(source: source);

  if (pickedImage != null) {
    setState(() {
      _imageFile = File(pickedImage.path);
    });
    
    // Do something with the picked image file
  }
}



void _showImagePicker() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Pick from Gallery'),
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Text('Capture from Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}







var _imageFile2;

Future<void> _pickImage2(ImageSource source) async {
  final picker2 = ImagePicker();
  final pickedImage2 = await picker2.pickImage(source: source);

  if (pickedImage2 != null) {
    setState(() {
      _imageFile2 = File(pickedImage2.path);
    });
    
    // Do something with the picked image file
  }
}



void _showImagePicker2() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Pick from Gallery'),
                onTap: () {
                  _pickImage2(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Text('Capture from Camera'),
                onTap: () {
                  _pickImage2(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}









var _imageFile3;

Future<void> _pickImage3(ImageSource source) async {
  final picker3 = ImagePicker();
  final pickedImage3 = await picker3.pickImage(source: source);

  if (pickedImage3 != null) {
    setState(() {
      _imageFile3 = File(pickedImage3.path);
    });
    
    // Do something with the picked image file
  }
}



void _showImagePicker3() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick Image'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text('Pick from Gallery'),
                onTap: () {
                  _pickImage3(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Text('Capture from Camera'),
                onTap: () {
                  _pickImage3(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}


var UserName;
var ShopName;
var Shop_Address;
var No_of_Branches;
var MobileNumber;
var Alternate_Mobile_Number;
var AadharNumber;



uploadDataToAPI() async {
  String apiUrl = 'https://96e0-2405-201-e03e-880a-600c-c531-16e9-24be.ngrok-free.app/api/retailregister'; // Replace with your API endpoint

  var request = http.MultipartRequest('POST', Uri.parse(apiUrl));


  request.headers['Accept'] = 'application/json';
  

  // Add the image file to the request
  request.files.add(await http.MultipartFile.fromPath('shop_photo', _imageFile.path));
  request.files.add(await http.MultipartFile.fromPath('visting_card', _imageFile2.path));
  request.files.add(await http.MultipartFile.fromPath('profile_photo', _imageFile3.path));

  // Add other form data fields
   request.fields['user_name'] = UserName.toString();
  request.fields['shop_name'] = ShopName.toString();
  request.fields['shop_address'] = Shop_Address.toString();
  request.fields['no_of_branches'] = No_of_Branches.toString();
  request.fields['mobile_number'] = MobileNumber.toString();
  request.fields['alternate_mobile_number'] = Alternate_Mobile_Number.toString();
  request.fields['aadhar'] = AadharNumber.toString();
  request.fields['pan_card'] = PAN.text;
  request.fields['shop_ownership'] = selectedValue==0? 'Rent' : selectedValue==1? 'Own' : 'Lease';
  request.fields['gst'] = GST.text;
  request.fields['password'] = Password.text;

  var response = await request.send();
  

  if (response.statusCode == 200) {


    // Data uploaded successfully
    print('Data uploaded');
    Fluttertoast.showToast(
                                                      msg: 'Upload Successfully',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 2,
                                                      backgroundColor: Colors.green,
                                                      textColor: Colors.white);
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
  } 
  
  else {
    // Error occurred while uploading data
    print('Error uploading data. Status code: ${response.statusCode}');
    Fluttertoast.showToast(
                                                      msg: 'Something Went Wrong',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 2,
                                                      backgroundColor: Colors.red,
                                                      textColor: Colors.white);
  }
}




@override
void initState(){
UserName= storage.getItem('user_name');
ShopName= storage.getItem('shop_name');
Shop_Address= storage.getItem('shop_address');

No_of_Branches= storage.getItem('no_of_user');

MobileNumber= storage.getItem('mobile_number');

Alternate_Mobile_Number= storage.getItem('alternative_number');
AadharNumber= storage.getItem('aadhar_number');


}



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
              Row(
                children: [
                  IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => registerpage()));
        
          }, icon: Icon(Icons.arrow_circle_left_rounded,color: Colors.white,size: 40,),),
                ],
              ),
          
             
              Container(
                
                child: Row(
                  
                  children: [
                    SizedBox(
                      width: width*0.35,
                    ),
                    
                  ],
                ),
        
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.85,
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
                            controller: PAN,
                            decoration: InputDecoration(
                              
                              border: InputBorder.none,
                              hintText: "PAN Number",
                              hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
                            ),
                          ),
                        ),
                      
                      
                            ),
                    
                    
                          // Row(
                          //   children: [
                          //     SizedBox(
                          //       width: width*0.1,
                          //     ),
                          //     Container(
                          //       width: width*0.3,
                          //       child: Text('Pan Card',style: TextStyle(fontSize: 16),)),
                          //     SizedBox(
                          //       width: width*0.15,
                          //     ),
                          //     Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                          //      ,)
                          //   ],
                          // ),
                          SizedBox(
                            height: 22,
                          ),
                          
                    
                          Row(
                            children: [
                              SizedBox(
                                width: width*0.1,
                              ),
                              Container(
                                width: width*0.3,
                                child: Text('Shop Photo',style: TextStyle(fontSize: 16),)),
                              SizedBox(
                                width: width*0.15,
                              ),
        
        
        
        
                              // Container(
                              //   height: height*0.06,
                              //   width: width*0.1,
                              //   color: Colors.red,
                              // ),
        
        
                              _imageFile==null?
        
        
                              IconButton(onPressed: (){
                                _showImagePicker();
                              }, icon: Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                               ,)):
        
        
                               Container(
                                height: height*0.06,
                                width: width*0.15,
                                child:  Image.file(
                            //to show image, you type like this.
                            File(_imageFile!.path),
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                              ),
        
        
        
        
                              // Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                              //  ,)
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                    
                          Row(
                            children: [
                              SizedBox(
                                width: width*0.1,
                              ),
                              Container(
                                width: width*0.3,
                                child: Text('Visiting card',style: TextStyle(fontSize: 16),)),
                              SizedBox(
                                width: width*0.15,
                              ),
        
        
        
                              _imageFile2==null?
        
        
                              IconButton(onPressed: (){
                                _showImagePicker2();
                              }, icon: Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                               ,)):
        
        
                               Container(
                                height: height*0.06,
                                width: width*0.15,
                                child:  Image.file(
                            //to show image, you type like this.
                            File(_imageFile2!.path),
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                              ),
        
        
        
                            ],
                          ),
                           SizedBox(
                            height: 25,
                          ),
                    
                    
                          Row(
                            children: [
                              SizedBox(
                                width: width*0.1,
                              ),
                              Text('Shop Ownership',style: TextStyle(fontSize: 16),),
                            ],
                          ),
                    
                    
                          Row(
                            
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                    
                    
                            Radio(
                              value: 0,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            Text('Rent'),
                            Radio(
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            Text('Own'),
                            Radio(
                              value: 2,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            Text('Lease'),
                          ],
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
        
                          controller: GST,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "GST/MSME",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
                          ),
                        ),
                      ),
                    
                    
                          ),
                          SizedBox(
                            height: 25,
                          ),
                           Row(
                            children: [
                              SizedBox(
                                width: width*0.1,
                              ),
                              Container(
                                width: width*0.3,
                                child: Text('Profile Photo',style: TextStyle(fontSize: 16),)),
        
        
                              SizedBox(
                                width: width*0.15,
                              ),
        
        
        
                              _imageFile3==null?
        
        
                              IconButton(onPressed: (){
                                _showImagePicker3();
                              }, icon: Icon(Icons.add_a_photo_outlined,color: const Color.fromARGB(255, 42, 106, 218),size: 40
                               ,)):
        
        
                               Container(
                                height: height*0.06,
                                width: width*0.15,
                                child:  Image.file(
                            //to show image, you type like this.
                            File(_imageFile3!.path),
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                              ),
                            ],
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
        
                          controller: Password,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal)
                          ),
                        ),
                      ),
                    
                    
                          ),
                          
                          SizedBox(
                            height: 12,
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
        
        
                                if(PAN.text.isEmpty){
                                  Fluttertoast.showToast(
            msg: "Enter PAN Number",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
        
                                else if(_imageFile==null){
                                  Fluttertoast.showToast(
            msg: "Select Shop Photo",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
        
                                else if(_imageFile2==null){
                                  Fluttertoast.showToast(
            msg: "Enter Visiting Number",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
        
                                else if(_imageFile3==null){
                                  Fluttertoast.showToast(
            msg: "Enter Profile Photo",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
                                else if(GST.text.isEmpty){
                                  Fluttertoast.showToast(
            msg: "Enter GST",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
                                else if(Password.text.isEmpty){
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
        
                                else if(_isChecked==false){
                                  Fluttertoast.showToast(
            msg: "Must Accept Terms & Conditions",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
              );
                                }
        
        
                                else{


                                  uploadDataToAPI();
        
        
        
        
        
                                  
                                }
        
        
        
        
        
                                
                          
                            }, child: Row(
                              children: [
                                Text('  Register  ',style: TextStyle(color: Colors.white),),
                               
                          
                              ],
                            )),
                          ),
        
        
        
        
        
                          Row(
                          children: [
                            const SizedBox(width: 60,),
                            const Text('Already have an account ?'),
                            TextButton(onPressed: (){
                    
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
                    
                            }, child: const Row(
                              children: [
                                Text('Login  ',style: TextStyle(color: Color.fromARGB(255, 17, 6, 236)),),
                                // Icon(Icons.person_add_alt_outlined,size: 20,color: Color.fromARGB(255, 44, 6, 236),)
                              ],
                            ))
                          ],
                        )
                    
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