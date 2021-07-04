import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_urdu_app/Screens/resultScreen.dart';
import 'package:fyp_urdu_app/Screens/about.dart';
import 'package:fyp_urdu_app/Screens/doNdonts.dart';
import 'package:fyp_urdu_app/Screens/resultScreen1.dart';
// import 'package:tflite/tflite.dart';
import 'mydrawer.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

//MY WORK SCREEN STFUL
class workPage extends StatefulWidget {
  @override
  _workPageState createState() => _workPageState();
}

class _workPageState extends State<workPage> {
  int selindex = 0;
  String value;
  StreamSubscription _intentDataStreamSubscription;
  List<SharedMediaFile> _sharedFiles;
  String _sharedText;

  // loadModel() async {
  //   await Tflite.loadModel(
  //     model: 'assets/fyp.tflite',
  //     labels: 'assets/fyp.txt',
  //   );
  // }

  void initState() {
    super.initState();

    // loadModel();


    // // For sharing images coming from outside the app while the app is in the memory
    // _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
    //     .listen((List<SharedMediaFile> value) {
    //   setState(() {
    //     print("Shared:" + (_sharedFiles?.map((f) => f.path)?.join(",") ?? ""));
    //     _sharedFiles = value;
    //   });
    // }, onError: (err) {
    //   print("getIntentDataStream error: $err");
    // });
    //
    // // For sharing images coming from outside the app while the app is closed
    // ReceiveSharingIntent.getInitialMedia().then((List<SharedMediaFile> value) {
    //   setState(() {
    //     _sharedFiles = value;
    //   });
    // });
    //
    // // For sharing or opening urls/text coming from outside the app while the app is in the memory
    // _intentDataStreamSubscription =
    //     ReceiveSharingIntent.getTextStream().listen((String value) {
    //   setState(() {
    //     _sharedText = value;
    //   });
    // }, onError: (err) {
    //   print("getLinkStream error: $err");
    // });
    //
    // // For sharing or opening urls/text coming from outside the app while the app is closed
    // ReceiveSharingIntent.getInitialText().then((String value) {
    //   setState(() {
    //     _sharedText = value;
    //   });
    // });

  }


  // @override
  // void dispose() async{
  //   super.dispose();
  //   await Tflite.close();
  //
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Numeric and Date Expression Detection"),
          backgroundColor: Colors.lightGreen.shade300,
        ),
        drawer: Mydrawer((int index) {
          setState(() {
            selindex = index;
          });
        }),
        body: Builder(
          builder: (context) {
            if (selindex == 0) {
              return workpagefromnav();
            }
            if (selindex == 1) {
              return doNdonts();
            }
            if (selindex == 2) {
              return about();
            }
            return workpagefromnav();
          },
        ),
      ),
    );
  }
} //MY WORK SCREEN STFUL from nav

class workpagefromnav extends StatefulWidget {
  @override
  _workpagefromnavState createState() => _workpagefromnavState();
}

class _workpagefromnavState extends State<workpagefromnav> {
  // _openGallery() {}
  //
  // _openCamera() {}

  // Future<void> _showchoicedialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text("Pick a Choice"),
  //           content: SingleChildScrollView(
  //             child: ListBody(
  //               children: <Widget>[
  //                 GestureDetector(
  //                   child: Text("Gallery"),
  //                   onTap: () {
  //                     _openGallery();
  //                   },
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.all(8.0),
  //                 ),
  //                 GestureDetector(
  //                   child: Text("camera"),
  //                   onTap: () {
  //                     _openCamera();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  var fyptextformfield;
  var _formkey = GlobalKey<FormState>();
  TextEditingController uipcontroller = TextEditingController();


  clearTextInput(){

    uipcontroller.clear();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008000),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            //list[index],
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  child: getlogo(),
                )),
            Container(
              color: Colors.white,
              child: TextFormField(
                textDirection: TextDirection.rtl,
                minLines: 5,
                keyboardType: TextInputType.text,
                maxLines: null,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.black,
                ),
                controller: uipcontroller,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'خالی نہ چھوڑے-برائے مہربانی ٹائپ کریں                 ';
                  }
                },
                decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 23.0, color: Colors.red),
                    hintText: ' برائے مہربانی ٹائپ کریں',

                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
                /* onChanged: (String newuip) {
                          setState(() {
                            this.fyptextformfield = newuip;
                          });
                        },*/
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                    child:ElevatedButton(
                    child: Text("CLEAR"),
                    style: ElevatedButton.styleFrom(
                      elevation: 2.0,
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      clearTextInput();
                    })),
                ElevatedButton(
                    child: Text("DETECT"),
                    onPressed: () async{
                      // print(uipcontroller.text);
                      // setState(() {
                      showDialog(context: context, builder: (context)=>Center(child: CircularProgressIndicator(),));
                      print("REQUESTING BEF");
                        if (_formkey.currentState.validate()) {
                          try{

                            print("REQUESTING ${uipcontroller.text}");
                            var response=await http.post(Uri.parse("https://97dfbdfbb0f0.ngrok.io"),body: {"sentence":uipcontroller.text});
                            var res=json.decode(response.body);
                            // print(res.toString().substring(10,res.toString().length-2));
                            // Navigator.pop(context);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ResultPageo(value: uipcontroller.text);

                                }));
                          }catch(e){
                            // Navigator.pop(context);
                            print("EXCEPTION: "+e);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ResultPageo(value: uipcontroller.text);

                                }));
                          } finally{
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ResultPageo(value: uipcontroller.text);

                                }));
                          }

                        }
                      // });
                    },
                    style: ElevatedButton.styleFrom(
                  elevation: 2.0,
                  primary: Colors.teal,
                ),
                    ),
              ],
            )
          ],
        ))),
      ),
    );
  }
}

class getlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/logo.png");
    Image image = Image(
      image: assetImage,
      height: 128,
      width: 256,
    );
    return Container(
      child: image,
    );
  }
} //LOGO img
