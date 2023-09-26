import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/sign up.png"))),
          ),
          Text("Sign Up",
          style: TextStyle(color: Color.fromARGB(255, 73, 103, 250),fontSize: 30),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)))
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)))
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)))
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "Enter Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)))
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "Confirm Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)))
              ),
            ),
          ),
          TextButton(onPressed: (){
          }, child: Container(
            width: 500,
            color: Color.fromARGB(255, 75, 73, 226),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Text("Create An Account",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          )
          ),
          Text("Sign In",style: TextStyle(
            color: Color.fromARGB(255, 75, 73, 226)
          ),
          ),
          Text("Reset Password",style: TextStyle(
            color: Color.fromARGB(255, 75, 73, 226)
          ),
          ),
        ],
      ),
    )
    );
  }
}