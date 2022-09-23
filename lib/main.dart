import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Contacts"),
          leading:
          IconButton(
              onPressed: (){},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: (){},
               icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
               icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.only(bottom: 20) ,
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: "Masukkan Nama Anda",
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                ),
                 Container(
                     margin:EdgeInsets.only(bottom: 20),
            child :
             SizedBox(
               width: 500,
              child:
              Row(
                children:  [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: new TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                        labelText: "State",
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){},
                          icon:  Icon(Icons.arrow_drop_down),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:  TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Area",
                          labelStyle: TextStyle(
                            color: Colors.deepPurple,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple
                              ),
                              borderRadius: BorderRadius.circular(100)
                          )
                      ),
                    ),
                  ),
                ],
              )
            )
        ),
                Container(
                  margin:EdgeInsets.only(bottom: 20),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.location_pin),
                        border: OutlineInputBorder(),
                        labelText: "Address",
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, bottom: 20),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "City",
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, bottom: 20),
                 child : Row(
                      children:  [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child:new TextFormField(
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "State",
                            labelStyle: TextStyle(
                             color: Colors.deepPurple,
                           ),
                           suffixIcon: IconButton(
                             onPressed: (){},
                             icon:  Icon(Icons.arrow_drop_down),
                           ),
                           enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                   color: Colors.deepPurple
                               ),
                               borderRadius: BorderRadius.circular(100)
                           )
                       ),
                     ),
                 ),
                        SizedBox(
                          width: 10,
                        ),
                        new Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: new TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Zip",
                                labelStyle: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple
                                    ),
                                    borderRadius: BorderRadius.circular(100)
                                )
                            ),
                          ),
                        ),
                      ],
                                          )


                ),
                Container(
                  margin:EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        suffixText: '@gmail.com',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple
                            ),
                            borderRadius: BorderRadius.circular(100)
                        )
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.cake),
                      border: OutlineInputBorder(),
                      labelText: "Birthday",
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){},
                         icon:  Icon(Icons.date_range),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurple
                          ),
                        borderRadius: BorderRadius.circular(100)
                      )
                  ),
                ),
                Align(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: (){
                              print('Data Berhasil Disimpan');
                            }, child: Text('Submit', style: TextStyle(color: Colors.white),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              fixedSize: MaterialStateProperty.all<Size>(Size(80, 40)),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: (){
                              print('Data Berhasil Direset');
                            }, child: Text('Reset', style: TextStyle(
                            color: Colors.white
                          ),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
                              fixedSize: MaterialStateProperty.all<Size>(Size(60, 40)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
        ),
    );
  }
}
