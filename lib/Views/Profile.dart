
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Historique.dart';
import 'package:flutter_application_1/Views/login.dart';
import 'package:flutter_application_1/Views/pageperso.dart';
import 'package:flutter_application_1/Views/setting.dart';
import 'package:flutter_application_1/beans/Client.dart';
import 'package:flutter_session/flutter_session.dart';


class Profile extends StatelessWidget {
  //client  de profil
 Future <Client>callAsyncFetch() async {
  dynamic token2 =  await FlutterSession().get("myclient");
Client item = Client.fromJson(token2);print(item.password);print(item.modified);
   return item;
}
    

   @override
  Widget build(BuildContext context) {

  return FutureBuilder<Client>(
      future: callAsyncFetch(),
      builder: (context, AsyncSnapshot<Client> c) {
        
        if (c.hasData) {
            var halfSide = MediaQuery.of(context).size.width / 2;
     var mainColor = Color(0xffffcea1);
     
    var side = halfSide * sqrt(2);

    var _borders = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(32));

    return Scaffold( 
     
      drawer: NavDrawer(),
      appBar: AppBar( backgroundColor:Color(0xffffcea1) ,
        title: Text( 'information'),
      ),
      backgroundColor: const Color(0xff435c59),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color:   const Color(0xff435c59),
            ),
          ),
        /*  Image.asset(
            'assets/bg.png',
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),*/
          Align(
            alignment: Alignment(0, 0.25),
            child: Transform.rotate(
              angle: pi / 4,
              child: Material(
                elevation: 5,
                shadowColor: Colors.black,
                color: Color(0xff435c59),
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  height: side,
                  width: side,
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Profil',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                           SizedBox(height: 16),
                          //user name 
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child:
                             TextField(
                            

                            readOnly: true,
                              keyboardType: TextInputType.phone,  
                               style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                               prefixIcon: Icon(Icons.email),
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: c.data.email,
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          //user name 
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                            

                            readOnly: true,
                              keyboardType: TextInputType.phone,  
                               style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                               prefixIcon: Icon(Icons.person),
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: c.data.firstName+" "+c.data.lastName,
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 16),
                          //phone
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                            

                            readOnly: true,
                              keyboardType: TextInputType.phone,  
                               style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                               prefixIcon: Icon(Icons.phone),
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: c.data.phone,
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              readOnly: true,
                              
                              keyboardType: TextInputType.visiblePassword,
                             
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                prefixIcon: Icon(Icons.attach_money),
                           
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: c.data.solde.toString(),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                         ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12),
              
              
            ),
          ),
          Align(
            alignment: Alignment(0, -0.7),
            child: Icon(
              Icons.verified_user,
              color: Colors.white,
              size: 90,
            ),
          )
        ],
      ),
    ));
  }
  
  
    
  

         
        else {
          return CircularProgressIndicator();
        }
      }
  );


    var halfSide = MediaQuery.of(context).size.width / 2;
     var mainColor = Color(0xffffcea1);
     
    var side = halfSide * sqrt(2);

    var _borders = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(32));

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
    MaterialPageRoute(builder: (context) => Settings()),
  )},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {(Navigator.of(context).pop)},
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