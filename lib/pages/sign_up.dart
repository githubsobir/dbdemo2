import 'package:dbdemo2/db_services/services.dart';
import 'package:dbdemo2/models/users.dart';
import 'package:dbdemo2/pages/sign_in.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  static final String id = "SignUP";

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  var contrEmail = TextEditingController();
  var contrNumber = TextEditingController();
  var contrAddress = TextEditingController();
  var contrPassword = TextEditingController();

  void doAction() {
    String email = contrEmail.text.toString().trim();
    String number = contrNumber.text.toString().trim();
    String address = contrAddress.text.toString().trim();
    String password = contrPassword.text.toString().trim();

    var user = new Users(
        email: email, number: number, address: address, password: password);
    DBServices().storeUser(user);
    Navigator.pushReplacementNamed(context, SignIN.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.983,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color.fromRGBO(0, 161, 153, 1),
              Color.fromRGBO(0, 161, 153, 0.9),
              Color.fromRGBO(0, 161, 153, 0.9),
            ])),
            child: Column(
              children: [
                //#header
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
//#body
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.1)),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.12,
                          MediaQuery.of(context).size.width * 0.1,
                          MediaQuery.of(context).size.width * 0.12,
                          MediaQuery.of(context).size.width * 0.01),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.02,
                          ),
                          //Email
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.052,
                                fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: contrEmail,
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter email",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.075,
                          ),
                          //Password
                          Text(
                            "Number",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.052,
                                fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: contrNumber,
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Number",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.065,
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.052,
                                fontWeight: FontWeight.bold),
                          ),

                          TextField(
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Address",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.065,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.052,
                                fontWeight: FontWeight.bold),
                          ),

                          TextField(
                            controller: contrPassword,
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Password",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.065,
                          ),
                          //Button SignIn
                          GestureDetector(
                            onTap: () {
                              doAction();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width * 0.13,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 161, 153, 1),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.02)),
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.065,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Divider(
                                    height: 1,
                                    color: Colors.grey[300],
                                  )),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "OR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey[300],
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.044),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Divider(
                                    height: 1,
                                    color: Colors.grey[300],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.025,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.lock_open,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.lock_open,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.lock_open,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.065,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "have an account ?",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.008,
                              ),
                              GestureDetector(
                                child: Text(
                                  "SignIN",
                                  style: TextStyle(
                                      color: Colors.blue.shade600,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignUP.id);
                                },
                              ),
                            ],
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
      ),
    );
  }
}
