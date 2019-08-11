import 'package:flutter/material.dart';
import 'package:slidy/src/home/home_module.dart';

import 'home_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc;
  int counter;

  @override
  void initState() {
    this.bloc = HomeModule.to.bloc<HomeBloc>();
    this.counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBlocColumn(),
          buildSetStateColumn(),
        ],
      ),
    );
  }

  Column buildSetStateColumn() {
    return Column(
      children: <Widget>[
        OutlineButton(
          child: Text('+ SetState'),
          onPressed: () {
            setState(() {
              this.counter++;
            });
          },
        ),
        Text(this.counter.toString())
      ],
    );
  }

  Column buildBlocColumn() {
    return Column(
      children: <Widget>[
        OutlineButton(child: Text('+ BLOC'), onPressed: this.bloc.fabAction),
        StreamBuilder<Object>(
            stream: bloc.countOut,
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? Center(child: Text("${snapshot.data.toString()}"))
                  : CircularProgressIndicator();
            }),
      ],
    );
  }
}
