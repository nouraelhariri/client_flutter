

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
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone=json['phone'];
    password = json['password'];
    solde=json['solde'];
    email = json['email'];
    factures = json['factures'];
    modified=json['modified'];
  }
  
  Client ({this.id, this.firstName,this.lastName,this.email,this.password,this.phone,this.modified,this.solde,this.factures});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["firstName"] = this.firstName;
    data["lastName"] = this.lastName;
    data["email"] = this.email;
    data["password"] = this.password;
    data["phone"] = this.phone;
    data["modified"] = this.modified;
    data["solde"] = this.solde;
    data["factures"] = this.factures;
   
    
    return data;
  }
    
}