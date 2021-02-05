import 'dart:convert';
import 'dart:html';
import 'package:flutter_application_1/beans/Client.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/pageperso.dart';
import 'dart:math';

import 'package:flutter_application_1/Views/showdialogee.dart';
import 'package:flutter_session/flutter_session.dart';



class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool _validate = false;
   bool _validate2 = false;
  var mainColor = Color(0xffffcea1);
final TextEditingController phone =TextEditingController();
final TextEditingController pass =TextEditingController();
  @override
  Widget build(BuildContext context) {
     child: 
    var halfSide = MediaQuery.of(context).size.width / 2;
    var side = halfSide * sqrt(2);

    var _borders = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(32));

    return Scaffold( 
      backgroundColor: const Color(0xff435c59),
      resizeToAvoidBottomInset: false,
      body: Stack(
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
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),
                          
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                            

                              controller: phone,
                              keyboardType: TextInputType.phone,  
                               style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                errorText: _validate ? 'userphone Can\'t Be Empty' : null,
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'phone',
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
                              controller: pass,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                errorText: _validate2 ? 'password Can\'t Be Empty' : null,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          FloatingActionButton(
                            onPressed: () {
                              login(phone.text,pass.text);get("http://localhost:6354/all");
                              
                            },
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: mainColor,
                              size: 40,
                            ),
                          )
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
              child: RaisedButton(child: Text('Sign In'),
             
               )
            ),
          ),
          Align(
            alignment: Alignment(0, -0.7),
            child: Icon(
              Icons.credit_card,
              color: Colors.white,
              size: 90,
            ),
          )
        ],
      ),
    );
  }
  login(String username,String password) async {
  
   
    
     Client mappedData = Client(id:1,firstName: "uhoh",lastName:"ihguhui",email:"emali",password:"216848",phone:"16516",modified:false,solde:204165,factures:null);
var m=jsonEncode(mappedData) ;

print(m.runtimeType);

//get client from api and l enregistrer via mappeddata /session
await FlutterSession().set('myclient', m);dynamic token2 = await FlutterSession().get("myclient");
Client item = Client.fromJson(token2);
   print(item.phone);

   // print(token2.toString());
    if(mappedData.modified==false){
     
 showAlertDialog(context);
 }
    
    else{
      //get client and session 

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageperso()),
  );
    }
    
  
     //get client from api 



   // createLoginState(current.username, current.password);
   

 

  } 
  

   Future<dynamic> get(String url) async {
    //Pass headers below 
    return http.get(url, headers: {"Authorization": "Some token"}).then(
        (http.Response response) {
      final int statusCode = response.statusCode;
      print("====response ${response.body.toString()}");

      if (statusCode < 200 || statusCode >= 400 || json == null) {
        //throw new ApiException(jsonDecode(response.body)["message"]);
      }
    print(" _decoder.convert(response.body)");
    });
  }

  postRequest () async {
 
  }
}
/* Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pageperso()),
  ); */
 
 
