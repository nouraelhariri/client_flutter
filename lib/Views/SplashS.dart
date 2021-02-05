import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class SplashS extends StatelessWidget {
  SplashS({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
      body:Stack(
        children: <Widget>[Image(image: AssetImage('../assets/menu.png')),
          Transform.translate( 
            offset: Offset(20.0, 333.0),
            child: SizedBox(
              width: 320.0,
              height: 100.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 100.0),
                    size: Size(320.0, 100.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'Welcome to\n ENSASPAY',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30,
                        color: const Color(0xffffcea1),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(65.0, 38.0),
            child:
                // Adobe XD layer: 'Noir et Or Cercle I…' (shape)
                Container(
              width: 230.0,
              height: 230.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(96.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(157.0, 546.0),
            child: Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 4.0, color: const Color(0xff7e9290)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(158.0, 546.0),
            child: Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 4.0, color: const Color(0xfffdcfa5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
