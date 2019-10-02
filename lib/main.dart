import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'D1041161018_tugasToastActiv'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String nama='';
  TextEditingController controller = new TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.display1,
              // ),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Nama Anda'
                ),
                onChanged: (String str){
                  setState(() {
                    nama=str;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(getNama: nama)));
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Lanjut'),
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}

class Home extends StatelessWidget  {
  final String getNama;
  Home({this.getNama});
  int _counter = 18;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (ctx, StateSetter setState) => Scaffold(
          appBar: AppBar(
          title: Text('D1041161018_tugasToastActiv'),
        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          color: Colors.white,
                          ),
                        alignment: Alignment.center,
                        child: Text('Hello $getNama',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                            border: Border.all(width: 1.0),
                            color: Colors.blue,
                            ),
                          alignment: Alignment.center,
                          child: Text('CountUp',style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.w500),),
                        ),
                        onTap: ()=> setState(() => _counter++),
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                            border: Border.all(width: 1.0),
                            color: Colors.blue,
                            ),
                          alignment: Alignment.center,
                          child: Text('CountDown',style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.w500),),
                        ),
                        onTap: ()=> setState(() => _counter--),
                      )
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text('$_counter',style: TextStyle(color: Colors.white,fontSize: 100.0, fontWeight: FontWeight.w900),),
              ),
            )
          ],
        ),

      ),
      ),
     
    );
  }
}