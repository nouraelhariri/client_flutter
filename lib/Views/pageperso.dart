import 'dart:html';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Historique.dart';
import 'package:flutter_application_1/Views/Profile.dart';
import 'package:flutter_application_1/Views/login.dart';
import 'package:flutter_application_1/Views/setting.dart';
import 'package:flutter_session/flutter_session.dart';

import 'dart:math';

import 'facturescreancier.dart';
 
class pageperso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  FlutterSession().set('imageagence', '../assets/money.jpg');
    return Scaffold(
      backgroundColor: const Color(0xff435c59),
      drawer: NavDrawer(),
      appBar: AppBar( backgroundColor:Color(0xffffcea1) ,
        title: Text("plus d'option"),
      ),
      body:   Stack(
        children:<Widget>[
             Align(
          //  alignment: Alignment(0, 0.25),
            
            child:
               
               Material(
                elevation: 5,
                shadowColor: Colors.blueGrey,
                color:  Colors.blueGrey,
                borderRadius: BorderRadius.circular(32),
                child: Container(
                 
                 
                   
                    child: Scrollbar(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
  



                        
                       children: <Widget>[
                          Row(children: <Widget>[  SizedBox(height: 10),
                          //user name 
                          Container(
                           // width: MediaQuery.of(context).size.width * 0.5,
                            child:
                              FlatButton(child: Text('Creancier', style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30,
                        color: const Color(0xffffcea1),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                              shape: new RoundedRectangleBorder( 
                        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: ()  {
 
  
  })
  
 ,
                            ),
                        
                       ],),
                         Row(
                      
                        children: <Widget>[
                          
                         SizedBox(height: 10),
                          //user name 
                          Container(
                           // width: MediaQuery.of(context).size.width * 0.5,
                            child:
                              FlatButton(child: Image.asset('../assets/maroct.jpg',height:200,width:200,),shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: () async {
      FlutterSession().set('imageagence', '../assets/maroct.jpg');
   
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => facturescreancier()),
  );
  
  })
  
 ,
                            ),
                          
                           
                            SizedBox(height: 10),
                          Container(
                            //width: MediaQuery.of(context).size.width * 0.5,
                            child: 
                          FlatButton(child: Image.asset('../assets/inwi.jpg',height:150,width:150,),shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: () async{FlutterSession().set('imageagence', '../assets/inwi.jpg');
    dynamic token2 = await FlutterSession().get("imageagence");
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => facturescreancier()),
  );
     
  
  }) ),
                         ],
                      ),
                    ] ), ),
                  
                ),
              ),
              ),
   
 
  
        ])
  
    );
  }   
 
}
   
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {backgroundColor: const Color(0xff435c59);
    return Drawer( 
      
      child: ListView(
         
        padding: EdgeInsets.zero,
        children: <Widget>[
          

          DrawerHeader(
            
            child: Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              
               
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('../assets/menu.png'))),
          ),
          ListTile(
            
            leading: Icon(Icons.input),
            title: Text('Liste de creanciers'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageperso()),
  )},
          ),
          ListTile(
            
            leading: Icon(Icons.history),
            title: Text('Historique'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Historique()),
  )},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  )},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Settings() ),
  )},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  )},
          ),
        ],
      ),
    );
  }
}