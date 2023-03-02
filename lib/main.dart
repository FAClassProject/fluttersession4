import 'package:flutter/material.dart';
import 'package:fluttersession4/form_demo.dart';
import 'package:fluttersession4/resources/app_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  FormDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(AppString.appTitle,
              style: TextStyle(color: Colors.green,
                  fontSize: 30, fontWeight: FontWeight.bold,
              backgroundColor: Colors.yellow),),
            SizedBox(height: 30,),

            Icon(Icons.add_call, size: 50, color: Colors.deepPurple,),
             SizedBox(height: 30,),
            Image.asset("assets/images/aptech_logo2.png", fit: BoxFit.cover,),
            SizedBox(height: 30,),

            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Image.network("https://images.pexels.com/"
                  "photos/15278251/pexels-photo-15278251."
                  "jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",),
            ),
          ],
        ),
      ),
    );
  }
}
