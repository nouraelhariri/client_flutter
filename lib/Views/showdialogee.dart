import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Profile.dart';
import 'package:flutter_application_1/beans/Client.dart';
import 'package:flutter_session/flutter_session.dart';

showAlertDialog(BuildContext context) {
String pass="";
final TextEditingController newpass =TextEditingController();
  // set up the buttons
 
  Widget launchButton = FlatButton(
    child: Text("Confirmer"), 
    onPressed:  ()  async {
      if(newpass.text!= "" ){

//get client from api and l enregistrer via mappeddata /session

        // changepassword de client
      dynamic token2 = await FlutterSession().get("myclient"); 
      Client item = Client.fromJson(token2);
      Client mappedData = item;
      mappedData.password=newpass.text;
      mappedData.modified=true;
var m=jsonEncode(mappedData) ;
print(m.runtimeType);
await FlutterSession().set('myclient', m);
   
   
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  );}
            }
            
    );
   
  
    
  

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("changer  le password avant utilisé l'application"),
    content: TextField(obscureText: true,
    controller: newpass,
    decoration: InputDecoration(
                               
                                filled: false,
                                
                                
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  ),
                              ),),
    actions: [
     
      launchButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );}

  /*
    var client= storage.getItem("client");
         String k=client.toString().substring(23,client.toString().length-10)+"}";
         print(k); 
         Client mappedData= Client.fromJson(jsonDecode(k));
         var m=jsonEncode(mappedData) ;
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  );*/ 