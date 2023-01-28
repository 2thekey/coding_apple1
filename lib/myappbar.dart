import 'package:flutter/material.dart';

import 'lottovar.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        //color: Colors.pink,
        // we can set width here with conditions
        width: 420,
        //height: 800,
        height: kToolbarHeight,
        child:  AppBar(

          //centerTitle: true,
          title: const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(text: '로', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '또', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                TextSpan(text: '만', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '이', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                TextSpan(text: ' 살', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                TextSpan(text: '길이다     ', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
                //TextSpan(text: '!', style: TextStyle(fontFamily: 'sandolout',fontSize: 38,fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),


          actions: <Widget>[


            IconButton(
              icon: Icon(Icons.info_outline, color: Colors.red),
              onPressed: () {

                //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("snack")));

                lottoToast2(context);

              },
            ),
          ],

          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  ///width doesnt matter
  @override
  Size get preferredSize => Size(420, kToolbarHeight);
}
