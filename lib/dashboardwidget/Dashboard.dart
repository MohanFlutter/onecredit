import 'package:flutter/material.dart';
import 'package:onecredit/AddcustomerWidget/Addcustomer.dart';
import 'package:onecredit/Approvalpendingwidget/approvalpending.dart';
import 'package:onecredit/Customerlistwidget/customerlist.dart';
import 'package:onecredit/Loginwidget/Loginpage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {



  var servicenumber='1';
  var approvependingnumber='2';
  var customerlistnumber='3';
  var accountsnumber='4';
  var paynownumber='5';
  var contactusnumber;
  @override
  Widget build(BuildContext context) {
    double screenHeight =MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("ONE CREDIT DASHBOARD",style: TextStyle(fontSize: 16),),

        actions: [
          Row(
children: [
  IconButton(onPressed: (){}, icon: Icon(Icons.refresh),iconSize: 20,),
  
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications),iconSize: 20,),
            IconButton(onPressed: (){}, icon: Icon(Icons.person_pin),iconSize: 20,)
],
          )
        ],
        
        

      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [

            Container(
              height: screenHeight*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/blu.jpeg'),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Container(
                    
                    height: screenHeight*0.18,
                    width: screenWidth*0.25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      
                      image: DecorationImage(image: AssetImage('assets/men.jpg'),fit: BoxFit.cover,)
                    ),
                    
                    // child: Image(image: AssetImage('assets/a.jpg'),fit: BoxFit.contain,),
                  ),
                  Text('Madhan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  Text('Dealer',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 16),),

                ],
              ),
            
            ),

            
            
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_city),
              title: const Text(' Bank Details '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My Customers '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Settings '),
              onTap: () {
                Navigator.pop(context);
              },
              ),
            ListTile(
              leading: const Icon(Icons.rule),
              title: const Text(' Terms & Conditions '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: Row(
                children: [
                  Text("Welcome Madhan"),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight*0.2,
                      width: screenWidth*0.31,
                      color: Color.fromARGB(255, 61, 64, 73),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.04,
                          ),
                          Icon(Icons.person_2_rounded,size: 40,color: Colors.white,),
                          Text("20",style: TextStyle(color: Colors.white),),
                          Text('Total Customers',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight*0.2,
                      width: screenWidth*0.31,
                      color: Color.fromARGB(255, 61, 64, 73),
                       child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.04,
                          ),
                          Icon(Icons.person_2_rounded,size: 40,color: Colors.green,),
                          Text("20",style: TextStyle(color: Colors.white),),
                          Text('Active Customers',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                
                    ),
                    Container(
                      height: screenHeight*0.2,
                      width: screenWidth*0.31,
                      color:  Color.fromARGB(255, 61, 64, 73),
                       child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight*0.04,
                          ),
                          Icon(Icons.person_2_rounded,size: 40,color: Colors.red,),
                          Text("20",style: TextStyle(color: Colors.white),),
                          Text('EMI Closed',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                            height: 20,
          
                          ),
                    Container(
                      child:Column(
                        children: [
                          
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // SizedBox(
                              //   width: 25,
                              // ),
                              InkWell(
                                child: Container( 
                                  
                                    // height: screenHeight*0.6,
                                    //                     width: screenWidth*0.9,
                                                        decoration: BoxDecoration(
                                                   
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
                 
                                  height: screenHeight*0.15,
                                        width: screenWidth*0.25,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                     Container(
                                        height: screenHeight*0.1,
                                        width: screenWidth*0.2,
                                        
                                        decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(8.0),
                                           color: Colors.blue,
                                           
                                          
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Icon(Icons.calculate_sharp,size: 65,color: Colors.white,),
                                            )
                                          ],
                                        ),
                                        
                                        

                                        
                                      ),
                                      SizedBox(
                                        height:4,
                                      ),
                                      Text('EMI Calculator',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              
                                      
                                    ],
                                  ),
                                ),
                                onTap: (){
          
                                },
                              ),
                              InkWell(
                                child: Container( 
                                  
                                    // height: screenHeight*0.6,
                                    //                     width: screenWidth*0.9,
                                                        decoration: BoxDecoration(
                                                   
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
                 
                                  height: screenHeight*0.15,
                                        width: screenWidth*0.25,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: screenHeight*0.1,
                                        width: screenWidth*0.2,
                                        
                                        decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(8.0),
                                           color: Colors.blue,
                                           
                                          
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Icon(Icons.person_add,size: 50,color: Colors.white,),
                                            )
                                          ],
                                        ),
                                        
                                        
                                        
                                      ),
                                      SizedBox(
                                        height:4,
                                      ),
                                      Text('Add Customer',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              
                                      
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddCustomer(),));
                                },
                              ),




                              InkWell(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    height: screenHeight * 0.15,
    width: screenWidth * 0.25,
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
              // width: 20,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.pending_actions_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Approval Pending', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
          ],
        ),



        approvependingnumber==null?
        Container(

        ):


        Positioned(
          top: 5,
          left: 5, // Updated to place it in the top-left corner
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red, // Color of the badge
              shape: BoxShape.circle,
            ),
            child: Text(
              approvependingnumber, // You can replace this with your actual notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  onTap: () {
    // Add your onTap functionality here
    Navigator.push(context, MaterialPageRoute(builder: (context) => Approvalpending(),));
  },
)





                            ],
                          ),



                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // SizedBox(
                              //   width: 25,
                              // ),
                              InkWell(
                                child: Container( 
                                  
                                    // height: screenHeight*0.6,
                                    //                     width: screenWidth*0.9,
                                                        decoration: BoxDecoration(
                                                   
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
                 
                                  height: screenHeight*0.15,
                                        width: screenWidth*0.25,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                     Container(
                                        height: screenHeight*0.1,
                                        width: screenWidth*0.2,
                                        
                                        decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(8.0),
                                           color: Colors.white,
                                           
                                          
                                        ),
                                        child: Column(
                                          children: [
                                            Icon(Icons.qr_code_scanner,size: 60,color: Colors.green,),

                                            Text('Enroll Now',style: TextStyle(fontSize: 10),),
                                            SizedBox(height: 2,),
                                            Text('Approved Cus',style: TextStyle(fontSize: 10),)
                                      //       Row(
                                      //   children: [
                                      //     Flexible(child: Text('Approved Customer',style: TextStyle(fontSize: 10),)),
                                      //   ],
                                      // ),
                                          ],
                                        ),
                                        
                                        
                                        
                                      ),
                                      // SizedBox(
                                      //   height:4,
                                      // ),
                                      // Row(
                                      //   children: [
                                      //     Flexible(child: Text('Approved Customer',style: TextStyle(fontSize: 10),)),
                                      //   ],
                                      // ),
                              
                                      
                                    ],
                                  ),
                                ),
                                onTap: (){
          
                                },
                              ),










                              InkWell(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    height: screenHeight * 0.15,
    width: screenWidth * 0.25,
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
              // width: 20,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.people_alt_outlined,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Customer List', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),



        customerlistnumber==null?
        Container(

        ):


        Positioned(
          top: 5,
          left: 5, // Updated to place it in the top-left corner
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red, // Color of the badge
              shape: BoxShape.circle,
            ),
            child: Text(
              customerlistnumber, // You can replace this with your actual notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  onTap: () {
    // Add your onTap functionality here

    Navigator.push(context, MaterialPageRoute(builder: (context) => Customerlist(),));
  },
),
















                              InkWell(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    height: screenHeight * 0.15,
    width: screenWidth * 0.25,
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
              // width: 20,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.miscellaneous_services_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Service enquiry', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),



        servicenumber==null?
        Container(

        ):


        Positioned(
          top: 5,
          left: 5, // Updated to place it in the top-left corner
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red, // Color of the badge
              shape: BoxShape.circle,
            ),
            child: Text(
              servicenumber, // You can replace this with your actual notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  onTap: () {
    // Add your onTap functionality here
  },
)








// By updating the left property to 5 in the Positioned widget, you place the notification badge in the top-left corner of the container. You can adjust the position by 
// In this modified code:

// I added a Stack widget to overlap the notification badge on top of the existing container's content.
        
        
        
        
        
        
                              
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // SizedBox(
                              //   width: 25,
                              // ),
                              InkWell(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    height: screenHeight * 0.15,
    width: screenWidth * 0.25,
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
              // width: 20,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.wallet,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Accounts', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
          ],
        ),



        accountsnumber==null?
        Container(

        ):


        Positioned(
          top: 5,
          left: 5, // Updated to place it in the top-left corner
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red, // Color of the badge
              shape: BoxShape.circle,
            ),
            child: Text(
             accountsnumber, // You can replace this with your actual notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  onTap: () {
    // Add your onTap functionality here
  },
),









                              InkWell(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    height: screenHeight * 0.15,
    width: screenWidth * 0.25,
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
              // width: 20,
            ),
            Center(
              child: 
              
              Container(
                height: screenHeight * 0.1,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue,
                  image: DecorationImage(image: AssetImage('assets/pay.png'))

                ),
                // child: Column(
                //   children: [


                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Icon(
                //         Icons.wallet,
                //         size: 60,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Pay Now', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),







          ],
        ),



        paynownumber==null?
        Container(

        ):


        Positioned(
          top: 5,
          left: 5, // Updated to place it in the top-left corner
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red, // Color of the badge
              shape: BoxShape.circle,
            ),
            child: Text(
           paynownumber, // You can replace this with your actual notification count
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  onTap: () {
    // Add your onTap functionality here
  },
),









                              InkWell(
                                child: Container( 
                                  
                                    // height: screenHeight*0.6,
                                    //                     width: screenWidth*0.9,
                                                        decoration: BoxDecoration(
                                                   
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
                 
                                  height: screenHeight*0.15,
                                        width: screenWidth*0.25,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 20,
                                      ),
                                      Container(
                                        height: screenHeight*0.1,
                                        width: screenWidth*0.2,
                                        
                                        decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(8.0),
                                           color: Colors.blue,
                                           image: DecorationImage(image: AssetImage('assets/cus.png'))
                                           
                                          
                                        ),
                                        
                                        
                                        
                                        
                                      ),
                                      SizedBox(
                                        height:4,
                                      ),
                                      Text('Contact Us',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              
                                      
                                    ],
                                  ),
                                ),
                                onTap: (){
          
                                },
                              ),
        
        
        
        
        
        
        
                              
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

          ],
        )
        
        
      ), 
      Container(
                        height: screenHeight*0.3,
                        width: screenWidth,
                        child: CarouselSlider(items: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(image:AssetImage('assets/hhhh.jpg'),fit: BoxFit.fill ),
                                  
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(image:AssetImage('assets/first.jpg'),fit: BoxFit.fill ),
                                  
                                ),
                              ),
                              
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(image:AssetImage('assets/second.jpg'),fit: BoxFit.fill ),
                                  
                                ),
                              ),Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(image:AssetImage('assets/third.jpg'),fit: BoxFit.fill ),
                                  
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16/9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                            ),),
                      ),
                     
          ]
        ),
      )
      
    ));
  }
}