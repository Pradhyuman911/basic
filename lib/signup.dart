// import 'package:basic_3/login.dart';
import 'package:basic_3/homescreen.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context){
  //set up the button 
  Widget okButton = FlatButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));
  },child: Text('OK'),);

  AlertDialog alert = AlertDialog(
    title: Text("Signing Up"),
    content: Text("You Have Signed Up Successfully"),
    actions: [
      okButton,
    ],
  );
showDialog(
  context: context,
  builder: (BuildContext context){
    return alert;
  }
);
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 1100,
            child: Scaffold(
              appBar: AppBar(title: Text('SignUp Page')),
              body: Container(
                color: Colors.green[100],
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      // width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/new6.jpg")),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[350],
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "User Name",
                          hintText: "Enter Name"),
                    )),
                    SizedBox(height: 20),
                    Container(
                        child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[350],
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Email Id",
                          hintText: "Enter Email with @abc.com"),
                    )),
                    SizedBox(height: 20),
                    Container(
                        child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[350],
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Password",
                          hintText: "Enter Strong password"),
                    )),
                    SizedBox(height: 20),
                    Container(
                        child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[350],
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Confirm Password",
                          hintText: "Confirm password"),
                    )),
                    SizedBox(height: 20),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30)),
                      height: 50,
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Text('Sign Up'),
                      textColor: Colors.white,
                      color: Colors.green,
                      minWidth: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
