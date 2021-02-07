import 'package:flutter/material.dart';
import 'main_drawer.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text("One-Stop Startup"),
        ),
        drawer: MainDrawer(),
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                child: Container(
                     padding: const EdgeInsets.all(32),
                       child: SingleChildScrollView( child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                          "Welcome to One-Stop Startup App. The one-stop center or platform for start-ups to get advisory, startup monitoring, tracking and reporting.",
                          style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                           letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                           color: Colors.blueGrey[300]),
                          ),
                          SizedBox(
                        height: 4,
                           ),
                         Container(
                           color: Colors.grey[200],
                           child: new Image.asset('assets/startup.jpg'),
                           alignment: Alignment.center,
                         ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "We creates an environment where entrepreneurship and innovation can thrive which is a priority for our government. ",
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.cyan),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Many agencies such as MaGIC attempt to assist early stage startups to find their footing and eventually nurture them to become regional or global players.  ",
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.cyan),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "We are here to help you to build startup and give you some advisory.",
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.cyan),
                            ),
                       ],
                ),
                ),
              ),
            ),
        ],
      ),
      ),
    );
  }
}