import 'package:flutter/material.dart';
import 'page1.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          child: SingleChildScrollView( child: Column(
            children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
                 color: Colors.deepPurple,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100.0,),
                    Text(
                      "One-Stop Startup",
                      style: TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 50.0,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter email',
                      filled: true,
                    ),
                  ),
                    SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                       labelText: 'Enter password',
                      filled: true,
                    ),
                  ),
                  SizedBox(height:50,),
                  Column(
                    children: <Widget>[
                      ButtonTheme(
                         height:50,
                        disabledColor: Colors.blueAccent,
                        child:RaisedButton(
                          onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> Page1()
                          ));
                        },
                         child: Text('Login',style:TextStyle(fontSize:20,color:Colors.white)
                         ),
                          ),
                           ),
                      SizedBox(height: 300.0,),
                          ],
                         ),
                        ],
                       ),
                     ),
                ],
             ),
           ),
        ),
      );
  }
}