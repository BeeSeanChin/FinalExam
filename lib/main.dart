import 'package:flutter/material.dart';
import 'challenge.dart';
import 'academy.dart';
import 'bootcamp.dart';
import 'others.dart';
import 'page1.dart';
class Main extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    theme: ThemeData(
    primaryColor: Colors.purple,
    ),
    );
  }
}

final List<Tab> tabs = <Tab>[
  Tab(text: 'Challenge'),
  Tab(text: 'Bootcamp'),
  Tab(text: 'Academy'),
  Tab(text: 'Others'),
];

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Page1()));
            }),
              title: Text('Advisory In Early Stage'),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: [
              Challenge(),
              Bootcamp(),
              Academy(),
              Others(),
            ],
          ),
        );
      }),
    );
  }
}

