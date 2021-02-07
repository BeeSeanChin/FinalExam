import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_startupapp/main1.dart';
import 'login.dart';
import 'main.dart';
import 'main3.dart';
import 'main1.dart';
import 'faq.dart';

class MainDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width:100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    ),
                  Text(
                      'Welcome User1',
                      style: TextStyle(
                      fontSize: 22, color:Colors.white,
                      ),
                  ),
                ],
            ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text(
              'Advisory of Early Stage Startup',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Main()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text(
              "Generate Others' Startup Reports",
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Page2()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.table_view),
            title: Text(
              'Reports of Own Startup',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Main1()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_comment),
            title: Text(
              'FAQs',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Faq()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Login()
              ));
            },
          ),
        ],
      ),
    );
  }
}

