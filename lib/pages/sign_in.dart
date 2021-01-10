import 'package:dbdemo2/db_services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'appmain.dart';
import 'sign_up.dart';

class SignIN extends StatefulWidget {
  static final String id = "SignIN";

  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  var contEmail = TextEditingController();
  var contPassword = TextEditingController();

  void doActions() {
    String contEmail = this.contEmail.text.toString().trim();
    String contPassword = this.contPassword.text.toString().trim();

    var user = DBServices().loadUser();
    if (contEmail == user.email && contPassword == user.password) {
      Navigator.pushReplacementNamed(context, App.id);
    }

    if (user.email.isEmpty || user.email == null) {
      print("natija yoq");
      return null;
    }
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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //#header
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 0.15,
                            width: MediaQuery.of(context).size.width * 0.15,

                            // MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/ist.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
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
                        "Sign In",
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
                            height: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.052,
                                fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: contEmail,
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter email",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
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
                            controller: contPassword,
                            decoration: InputDecoration(
                                // isDense: true,
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Password",
                                hintStyle: TextStyle(color: Colors.grey[300])),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.09,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Forget Password ?",
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.044),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          //Button SignIn
                          GestureDetector(
                            onTap: () {
                              doActions();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 161, 153, 1),
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.02)),
                              child: Center(
                                child: Text(
                                  "Sign In",
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
                            height: MediaQuery.of(context).size.width * 0.07,
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
                            height: MediaQuery.of(context).size.width * 0.03,
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
                            height: MediaQuery.of(context).size.width * 0.09,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account ?",
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
                                  "SignUp",
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
