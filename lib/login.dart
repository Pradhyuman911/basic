import 'package:basic_3/homescreen.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Logged in"),
    content: Text("You Have Loged in Successfully"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 900,
            width: double.infinity,
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'You Are on Login Page',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              body: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.green[100],
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.all(25),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/new5.jpg"),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 20),
                      Container(
                          // color: Colors.grey[350],
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
                            labelText: 'User Name',
                            hintText: 'Enter valid name'),
                      )),
                      SizedBox(height: 20),
                      Container(
                        // color: Colors.grey[350],
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
                                labelText: 'Password',
                                hintText: 'Enter password')),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Forgot Password?'),
                        textColor: Colors.blue,
                      ),
                      FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        height: 50,
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text('Login'),
                        textColor: Colors.white,
                        color: Colors.green,
                        minWidth: 200,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
