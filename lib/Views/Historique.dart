
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Profile.dart';
import 'package:flutter_application_1/Views/login.dart';
import 'package:flutter_application_1/Views/pageperso.dart';
import 'package:flutter_application_1/Views/setting.dart';
import 'package:flutter_application_1/beans/facture.dart';





class Historique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Facture f1= Facture(factureId:2, description:"descr1",agenceName:"",montant:50000,status:false); Facture f2= Facture(factureId:2, description:"",agenceName:"",montant:50000,status:false);
    List<Facture> litems = [f1,f2];
    return Scaffold(
      backgroundColor: const Color(0xff435c59),
      drawer: NavDrawer(),
      appBar: AppBar( backgroundColor:Color(0xffffcea1) ,
        title: Text("plus d'option"),
      ),
      body:new ListView.builder(
 itemCount: litems.length,
    itemBuilder: (BuildContext ctxt, int index) {
     return new ListTile(
      leading: Icon(Icons.payment,color:Color(0xffffcea1) ),
      title:  Text(litems[index].agenceName +" "+litems[index].description+" "+litems[index].montant.toString()) );
      
    }
  
  
  
)
    );
  }
  List <Facture> getlist(){
    
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