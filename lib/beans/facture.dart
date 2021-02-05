 import 'package:flutter/cupertino.dart';

class Facture {int factureId;
            String description;
            String agenceName;
            int montant;
            bool status;
            bool sanction;
            DateTime lastDayPayment;
 
  

 
    
 
Facture ({this.factureId, this.description,this.agenceName,this.montant,this.status,this.lastDayPayment,this.sanction});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["factureId"] = factureId;
    data["description"] = this.description;
    data["agenceName"] = this.agenceName;
    data["status"] = this.status;
    data["montant"] = this.montant;
    data["sanction"] = this.sanction;
    data["lastDayPayment"] = this.lastDayPayment;
   
    
    return data;
  }
  
  // constructor
  
  Facture.fromJson(Map<String, dynamic> json) {
    factureId=json['factureId'];
    description= json['description'];
    agenceName =  json['agenceName'];
    montant =  json['montant'];
    status= json['status'];
    
    
  }
    
}