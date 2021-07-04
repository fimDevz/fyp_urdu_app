import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {

  final Function onIndex;
  Mydrawer(this.onIndex);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xff008000)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Text(
                        "Numeric and Date Expression Detection"
                    ),

                  ],
                )),
            ListTile(
              leading: Icon(Icons.fiber_new_outlined),
              title: Text('NEW'),
              onTap: ()=>onIndex(0),
            ),
            ListTile(
              leading: Icon(Icons.perm_device_info_rounded),
              title: Text("DO's and DONT's"),
              onTap: ()=>onIndex(1),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('ABOUT'),
              onTap: ()=>onIndex(2),
            ),

          ],
        ),
      ),
    );
  }
}