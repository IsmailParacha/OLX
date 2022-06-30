import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = false;
    return Scaffold(
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_0mohmgca.json'),
            Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              "Create an account, it's free",
              style: TextStyle(fontSize: 16.0),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0, left: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "User name",
                              suffixIcon: Icon(Icons.done),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(
                                          255, 199, 199, 199))))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Email",
                              suffixIcon: Icon(Icons.done),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(
                                          255, 199, 199, 199))))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 3,
                                    color:
                                        Color.fromARGB(255, 199, 199, 199)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Confirm Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 3,
                                    color:
                                        Color.fromARGB(255, 199, 199, 199)))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                width: 200.0,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  InkWell(
                    onTap: () => {Navigator.pushNamed(context, '/login')},
                    child: Text(
                      " Login",
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
