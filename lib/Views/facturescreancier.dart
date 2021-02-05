import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Historique.dart';
import 'package:flutter_application_1/Views/Profile.dart';
import 'package:flutter_application_1/Views/factureapayer.dart';
import 'package:flutter_application_1/Views/login.dart';
import 'package:flutter_application_1/Views/pageperso.dart';
import 'package:flutter_application_1/Views/setting.dart';
import 'package:flutter_application_1/beans/facture.dart';



import 'package:flutter_session/flutter_session.dart';


class facturescreancier extends StatelessWidget {
  String img='../assets/money.jpg';
 Future<String> callAsyncFetch()  async {
  dynamic token2 =  await FlutterSession().get('imageagence');
String  item = token2.toString();print(item);
return item;
}
  @override
  Widget build(BuildContext context) {
   Facture f1= Facture(factureId:2, description:"descr1",agenceName:"maroc telecom",montant:50000,status:false); Facture f2= Facture(factureId:2, description:"desc2",agenceName:"maroc telecom",montant:50000,status:false);
    List<Facture> litems = [f1,f2];
    String img='../assets/money.jpg';
   return  Material( 
     child: FutureBuilder(
          future:  FlutterSession().get('imageagence'),
          builder: (context, snapshot) {if(FlutterSession().get('imageagence')==null){
            img='../assets/money.jpg';
          }
            img=snapshot.data.toString();
            print(img);
    return Scaffold(
          

      
      backgroundColor: const Color(0xff435c59),
      drawer: NavDrawer(),
      appBar: AppBar( backgroundColor:Color(0xffffcea1) ,
        title: Text("plus d'option"),
      ),
      body:new ListView.builder(
 itemCount: litems.length,
    itemBuilder: (BuildContext ctxt, int index) {
     return 
     
     
     
      new ListTile(
    
      title:  Text(litems[index].montant.toString()),
    
         subtitle: Text(litems[index].description + "                    cliquer ici pour payer "),
        
         leading: Icon(Icons.attach_money),
         isThreeLine: true,
         onTap: () async {if(img==null){
           img='../assets/money.jpg';
         }
            Facture mappedData =litems[index];
var m=jsonEncode(mappedData) ;
print(m.runtimeType);

//get client from api and l enregistrer via mappeddata /session
await FlutterSession().set('facture', m);
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>factureapayer()),
  ); 
               
         } ,trailing: Image.asset(img));
    }
  
  
  
)
    );
  }));
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
            
            leading: Icon(Icons.warning),
            title: Text('historique'),
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