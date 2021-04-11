import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myparking/api/dailyMulfunctions_services.dart';
import 'package:myparking/models/daily_mulfunctions.dart';
import 'package:myparking/view/maintenance/mulfunctions_reports.dart';

class MaintenanceHome extends StatefulWidget {

  final DsilyMulfunction report;
  MaintenanceHome(this.report);

  @override
  State<StatefulWidget> createState() => _MaintenanceHomeState(report);
}

class _MaintenanceHomeState extends State<MaintenanceHome> {
  final globalKey = GlobalKey<ScaffoldState>();

  DsilyMulfunction report;
  _MaintenanceHomeState(this.report);

  bool sensor1Val = false;

  var dateController = TextEditingController();

  String showSensor1(){
    if(sensor1Val==true){
      return 'Sensor 1' ;
    }else return "" ;
  }

  bool sensor2Val = false;
  String showSensor2(){
    if(sensor2Val==true){
      return 'Sensor 2' ;
    }else return "" ;
  }

  bool sensor3Val = false;
  String showSensor3(){
    if(sensor3Val==true){
      return 'Sensor 3' ;
    }else return "" ;
  }
  bool sensor4Val = false;
  String showSensor4(){
    if(sensor4Val==true){
      return 'Sensor 4' ;
    }else return "" ;
  }
  bool sensor5Val = false;
  String showSensor5(){
    if(sensor5Val==true){
      return 'Sensor 5' ;
    }else return "" ;
  }
  bool sensor6Val = false;
  String showSensor6(){
    if(sensor6Val==true){
      return 'Sensor 6' ;
    }else return "" ;
  }

  bool led1Val = false;
  String showLed1(){
    if(led1Val==true){
      return 'led 1' ;
    }else return "" ;
  }
  bool led2Val = false;
  String showLed2(){
    if(led2Val==true){
      return 'Led 2' ;
    }else return "" ;
  }
  bool led3Val = false;
  String showLed3(){
    if(led3Val==true){
      return 'Led 3' ;
    }else return "" ;
  }
  bool led4Val = false;
  String showLed4(){
    if(led4Val==true){
      return 'Led 4' ;
    }else return "" ;
  }

  bool lcdVal = false;
  String showLcd(){
    if(lcdVal==true){
      return 'LCD' ;
    }else return "" ;
  }

  String formattedDate = DateFormat('EEE d MMM yyyy , kk:mm:ss ').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Row(children: <Widget>[Icon(Icons.error ,size: 40,color: Colors.red[800]),SizedBox(width: 20),Text('Malfunctions',style: TextStyle(color: Colors.red[800]),)],),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[

          ],
        ),

        body: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Text('Selected Malfunctions :',style: TextStyle(fontSize: 20),)
                    ),
                    SizedBox(height: 10),
                    Text("$formattedDate"),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(showSensor1().toString(),style: TextStyle(color: Colors.red),),
                                Text(showSensor2().toString(),style: TextStyle(color: Colors.red),),
                                Text(showSensor3().toString(),style: TextStyle(color: Colors.red),),
                                Text(showSensor4().toString(),style: TextStyle(color: Colors.red),),
                                Text(showSensor5().toString(),style: TextStyle(color: Colors.red),),
                                Text(showSensor6().toString(),style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: <Widget>[
                                Text(showLed1().toString(),style: TextStyle(color: Colors.red),),
                                Text(showLed2().toString(),style: TextStyle(color: Colors.red),),
                                Text(showLed3().toString(),style: TextStyle(color: Colors.red),),
                                Text(showLed4().toString(),style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: <Widget>[
                                Text(showLcd().toString(),style: TextStyle(color: Colors.red),),
                              ],
                            ),

                          ],
                        )
                    ),

                    Container(
                      height: 450,
                      child: ListView(
                        children: <Widget>[

                          SizedBox(height: 20),

                          new Card(
                            margin: EdgeInsets.all(20),
                            child: ExpansionTile(
                              title: Text('Sensors', style: TextStyle(fontSize: 20)),
                              subtitle: Text('Tab to select damaged one',
                                  style: TextStyle(color: Colors.orange)),
                              leading: Icon(Icons.airline_seat_flat_angled),
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: <Widget>[
                                      ExpansionTile(
                                        leading: Icon(Icons.directions_car),
                                        title: Text('cars', style: TextStyle(fontSize: 20)),
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 1',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor1Val = value;
                                                      });
                                                    },
                                                    value: sensor1Val,
                                                  )
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 2',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor2Val = value;
                                                      });
                                                    },
                                                    value: sensor2Val,
                                                  )
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 3',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor3Val = value;
                                                      });
                                                    },
                                                    value: sensor3Val,
                                                  )
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 4',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor4Val = value;
                                                      });
                                                    },
                                                    value: sensor4Val,
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                      ExpansionTile(
                                        leading: Icon(Icons.swap_vert),
                                        title: Text('Gate', style: TextStyle(fontSize: 20)),
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 5',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor5Val = value;
                                                      });
                                                    },
                                                    value: sensor5Val,
                                                  )
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Sensor 6',
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(width: 110),
                                                  Checkbox(
                                                    activeColor: Colors.red,
                                                    onChanged: (bool value) {
                                                      setState(() {
                                                        sensor6Val = value;
                                                      });
                                                    },
                                                    value: sensor6Val,
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          new Card(
                              margin: EdgeInsets.only(left: 20,right: 20),
                              child: Container(
                                alignment: Alignment.topLeft,
//                  margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: <Widget>[
                                    ExpansionTile(
                                      subtitle: Text('Tab to select damaged one',
                                          style: TextStyle(color: Colors.orange)),
                                      leading: Icon(Icons.lightbulb_outline,size: 30,),
                                      title: Text('Leds', style: TextStyle(fontSize: 20)),
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.only(left: 40),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  'led 1',
                                                  style: TextStyle(fontSize: 17),
                                                ),
                                                SizedBox(width: 180),
                                                Checkbox(
                                                  activeColor: Colors.red,
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      led1Val = value;
                                                    });
                                                  },
                                                  value: led1Val,
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(left: 40),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  'led 2',
                                                  style: TextStyle(fontSize: 17),
                                                ),
                                                SizedBox(width: 180),
                                                Checkbox(
                                                  activeColor: Colors.red,
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      led2Val = value;
                                                    });
                                                  },
                                                  value: led2Val,
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(left: 40),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  'led 3',
                                                  style: TextStyle(fontSize: 17),
                                                ),
                                                SizedBox(width: 180),
                                                Checkbox(
                                                  activeColor: Colors.red,
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      led3Val = value;
                                                    });
                                                  },
                                                  value: led3Val,
                                                )
                                              ],
                                            )),
                                        Container(
                                            margin: EdgeInsets.only(left: 40),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  'led 4',
                                                  style: TextStyle(fontSize: 17),
                                                ),
                                                SizedBox(width: 180),
                                                Checkbox(
                                                  activeColor: Colors.red,
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      led4Val = value;
                                                    });
                                                  },
                                                  value: led4Val,
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(height: 10),
                          new Card(
                            margin: EdgeInsets.all(20),
                            child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.personal_video),
                                    SizedBox(width: 30),
                                    Text(
                                      'LCD',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(width: 152),
                                    Checkbox(
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        setState(() {
                                          lcdVal = value;
                                        });
                                      },
                                      value: lcdVal,
                                    ),
                                  ],
                                )),
                          ),

                          Container(
                            margin: EdgeInsets.all(30),
                            child: RaisedButton(
                              color: Colors.blue,
                              child: Text('Submit', style: TextStyle(color: Colors.white,fontSize: 20)),
                              onPressed: () {
                                _showAlertMessage(context);
                                },
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                )
            ),
          ],
        )
    );
  }

  void saveStudent()async{

    sensor1Val==true ? report.carSensor1='1' : report.carSensor1='0';
    sensor2Val==true ? report.carSensor2='1' : report.carSensor2='0';
    sensor3Val==true ? report.carSensor3='1' : report.carSensor3='0';
    sensor4Val==true ? report.carSensor4='1' : report.carSensor4='0';
    sensor5Val==true ? report.gateSensor5='1' : report.gateSensor5='0';
    sensor6Val==true ? report.gateSensor6='1' : report.gateSensor6='0';
    led1Val==true ? report.led1='1' : report.led1='0';
    led2Val==true ? report.led2='1' : report.led2='0';
    led3Val==true ?report.led3='1' : report.led3='0';
    led4Val==true ?report.led4='1' : report.led4='0';
    lcdVal==true ?report.lcd='1' : report.lcd='0';
    report.date=formattedDate.toString();




    var saveResponse = await APIServices_dailyMulfunction.postStudent(report);
//    Navigator.pop(context,true);
//    // ignore: unnecessary_statements
//    saveResponse==true ? Navigator.pop(context,true) : null ;

  }

  void navigateToStudent(DsilyMulfunction repoort)async{
    await Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=>DailyReport()
        ));
  }

  void _showAlertMessage(BuildContext context) {
    var alert = new AlertDialog(
      content: Container(
        padding: EdgeInsets.only(top: 10),
        height: 150,
        child: Column(
          children: <Widget>[
            new Container(
              child: Icon(Icons.error_outline,color: Colors.orange,size: 80)
            ),
            SizedBox(height: 10),
            new Container(
                child: Text('Are you sure ?',style: TextStyle(fontSize: 25))
            ),
          ],
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    content: Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          new Container(
                              child: Icon(Icons.error,color: Colors.red,size: 60)
                          ),
                          SizedBox(height: 10),
                          new Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('Selected malfunctions failed to be reported .',style: TextStyle(fontSize: 20))
                          ),
                        ],
                      ),
                    ),
                  );
                }
            );
          },
          child: new Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.black),),
        ),
        new FlatButton(
          onPressed: () {
            saveStudent();
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    content: Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          new Container(
                              child: Icon(Icons.verified_user,color: Colors.green,size: 60)
                          ),
                          SizedBox(height: 10),
                          new Container(
                              child: Text('Selected malfunctions has been reported Successfully .',style: TextStyle(fontSize: 18))
                          ),
                        ],
                      ),
                    ),
                  );
                }
            );
          },
          child: new Text('Ok',style: TextStyle(fontSize: 20,color: Colors.black),),
        ),

      ],
    );
    showDialog(context: context, child: alert);
  }

  void canceledParkingSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Reservation canceled'));
    globalKey.currentState.showSnackBar(snackBar);
  }

  void confirmedParkingSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Reservation Confirmed'));
    globalKey.currentState.showSnackBar(snackBar);
  }

}