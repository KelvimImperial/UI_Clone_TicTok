import "package:flutter/material.dart";
import 'package:flutter_application_1/freelancer/util/profile_tab1.dart';
import 'package:flutter_application_1/freelancer/util/profile_tab2.dart';
import 'package:flutter_application_1/freelancer/util/profile_tab3.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          title:Text("Kelvim Imperial",textAlign: TextAlign.center,style:TextStyle(color:Colors.black)),
          
          backgroundColor: Colors.transparent,
          elevation:0,
          leading:Icon(Icons.person_add,color:Colors.black),
    
          actions:[Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: Icon(Icons.menu,color:Colors.black),
          )]
    
          
        ),
        backgroundColor:Colors.white,
        body:Column(
    
          children: [
    
            Container(
              width:120,
              height:120,
    
              decoration:BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.grey[200],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("@createdbykelvimimperial",style:TextStyle(color:Colors.black,fontSize:20)),
            ),
    
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                 
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                  
                  child: Column(children: [
    
                    Text("37",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:15)),
                SizedBox(height:5),
                    Text("Following",
                    style:TextStyle(color:Colors.black)
                    )
                  ],),
                            ),
                ),
              
              Expanded(
                
                child: Container(
                  
                  
                  child: Column(children: [
                    Text(" 8 ",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:15)),
              
                    Text(" Followers ",
                    style:TextStyle(color:Colors.grey)
                    )
                  ],),
                ),
              ),
    
    
               Expanded(
                 child: Container(
                  alignment: Alignment.centerLeft,
                  
                   child: Column(children: [
                    Text(" 56 ",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:24)),
                    SizedBox(height:5),
                    Text(" Likes ",
                    style:TextStyle(color:Colors.black,fontSize:15)
                    )
                           ],),
                 ),
               ),
    
    
    
    
    
            ],),
            SizedBox(height: 15,),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
    
              Container(
                padding: EdgeInsets.symmetric(vertical:15,horizontal:40),
              
                child:Text(" Edit Profile ",style:TextStyle(color:Colors.black,fontSize:20)),
                decoration: BoxDecoration(border:Border.all(color:Colors.grey),borderRadius: BorderRadius.circular(5)),
              ),
    
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:2.0),
                 child: Container(
                  padding: EdgeInsets.all(15),
    
              
                  child:Icon(Icons.camera_alt,color:Colors.grey.shade300),
                  
                  decoration: BoxDecoration(border:Border.all(color:Colors.grey),borderRadius: BorderRadius.circular(5)),
                  
              ),
               ),
    
               Container(
                padding: EdgeInsets.all(15),
              
                child:Icon(Icons.bookmark_border,color:Colors.grey.shade300),
                decoration: BoxDecoration(border:Border.all(color:Colors.grey),borderRadius: BorderRadius.circular(5)),
              ),
            ],),
            SizedBox(height:15),
    
            Text("Bio Here",style:TextStyle(color:Colors.grey[700])),

            TabBar(
              tabs: [
                Tab(icon:Icon(Icons.grid_3x3,color:Colors.black)),

                Tab(icon:Icon(Icons.favorite,color:Colors.black)),

                Tab(icon:Icon(Icons.lock_outline_rounded,color:Colors.black)),
              ],
            ),

            Expanded(
              child:TabBarView(
                children:[
                  FirstTab(),
                  SecondsTab(),
                  ThirdTab(),
                ]
              )
            )
    
    
    
    
    
          ],
        )
        
        
        ),
    );
  }
}