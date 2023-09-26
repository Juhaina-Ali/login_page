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
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/login.jpg"))),
          ),
          Text("Sign In",
          style: TextStyle(color: Color.fromARGB(255, 73, 103, 250),fontSize: 30),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name or Email Address",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)
                )
                )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "Enter Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20),
                ),borderSide: BorderSide(width: 3,
                  color: Color.fromARGB(255, 75, 73, 226)
                )
                )

              ),
            ),
          ),
          TextButton(onPressed: (){
          }, child: Container(
            width: 500,
            color: Color.fromARGB(255, 75, 73, 226),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Text("Login",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          )
          ),
          Text("Create An Account",style: TextStyle(
            color: Color.fromARGB(255, 75, 73, 226)
          ),
          ),
          Text("Reset Password",style: TextStyle(
            color: Color.fromARGB(255, 75, 73, 226)
          ),
          )
        ],
      ),
      )
      );
  }
}