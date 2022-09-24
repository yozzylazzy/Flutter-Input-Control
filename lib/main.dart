import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

TextEditingController dateinput = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController area = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController city = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController zip = TextEditingController();
TextEditingController email = TextEditingController();

//di runAPP bisa dikasi MaterialApp() juga biar gausa bkin kelas Stateless
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  controller: name,
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
                  Row(
                    children:  [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: TextFormField(
                          controller: phone,
                          decoration: InputDecoration(
                            icon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                            labelText: "Phone",
                            labelStyle: TextStyle(
                              color: Colors.deepPurple,
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
                        child:  DropdownButtonFormField<String>(
                          items : <String>['Bandung','Jakarta','Yogyakarta'].map((String value)
                          {return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );}).toList(),
                          onChanged: (value) => value,
                          decoration: InputDecoration(
                            // suffixIcon: PopupMenuButton<String>(
                            //   icon: Icon(Icons.arrow_drop_down),
                            //   onSelected: (String value){
                            //     _controller.text = value;
                            //   },
                            //   itemBuilder: (BuildContext context){
                            //     return items.map<PopupMenuItem<String>>((String value){
                            //       return new PopupMenuItem(child: Text(value), value: value);
                            //     }).toList();
                            //   },
                            // ),
                              border: OutlineInputBorder(),
                              labelText: "Area",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),

                              // suffixIcon: IconButton(
                              //   onPressed: (){},
                              //   icon:  Icon(Icons.arrow_drop_down),
                              // ),
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
                child:
                TextFormField(
                  controller: address,
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
                  controller: city,
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
                        child: DropdownButtonFormField<String>(
                          items: <String>["Indonesia","Singapore","Africa"].
                          map((String value){
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value){},
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "State",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              // suffixIcon: IconButton(
                              //   onPressed: (){},
                              //   icon:  Icon(Icons.arrow_drop_down),
                              // ),
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
                          controller: zip,
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
                  controller: email,
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
                controller: dateinput,
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));
                  if(pickedDate !=null){
                    String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState((){
                      dateinput.text = formattedDate;
                    });
                  } else {}
                },
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
              // DropdownButton(items: , onChanged: (){}),
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
                            dateinput.clear();
                            name.clear();
                            phone.clear();
                            area.clear();
                            address.clear();
                            city.clear();
                            zip.clear();
                            email.clear();
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
