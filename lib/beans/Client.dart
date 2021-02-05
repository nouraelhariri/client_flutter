

import 'package:flutter_application_1/beans/facture.dart';

class Client {
  int id;
  String firstName;
  String lastName;
  String  phone;
  String password;
  int solde;
  String email;
  bool modified;
  List<Facture> factures ;
  

 
    
  /*Client(int id,String firstName,String lastName,String  phone, String password,int solde ,String email,bool modified,List<Facture> factures ) {
        this.id=id;
        this.solde=solde;
        this.firstName = firstName;
        this.password = password;
        this.lastName=lastName;
        this.phone=phone;
        this.email=email;
        this.modified=modified;
        this.factures=factures;
        
    }*/
 
  
  // constructor

  Client.fromJson(Map<String, dynamic> json) {
    id = json["data"]['id'];
    firstName = json["data"]['firstName'];
    lastName = json["data"]['lastName'];
    phone=json["data"]['phone'];
    password = json["data"]['password'];
    solde=json["data"]['solde'];
    email = json["data"]['email'];
    factures = json["data"]['factures'];
    modified=json["data"]['modified'];
  }
  
  Client ({this.id, this.firstName,this.lastName,this.email,this.password,this.phone,this.modified,this.solde,this.factures});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["data"]["id"] = id;
    data["data"]["firstName"] = this.firstName;
    data["data"]["lastName"] = this.lastName;
    data["data"]["email"] = this.email;
    data["data"]["password"] = this.password;
    data["data"]["phone"] = this.phone;
    data["data"]["modified"] = this.modified;
    data["data"]["solde"] = this.solde;
    data["data"]["factures"] = this.factures;
   
    
    return data;
  }

}