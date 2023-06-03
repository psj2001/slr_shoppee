import 'package:flutter/material.dart';
import 'package:slr_shoppee/const.dart';
import 'package:slr_shoppee/screens/login.dart';
import 'package:slr_shoppee/screens/selectcontry.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          decoration: BoxDecoration(color: Colors.amber),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CREATE NEW",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              Text(
                "ACCOUNT",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              sizedh50,
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: whitebg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Username",
                              prefixIcon: Icon(Icons.account_circle_rounded)),
                        ),
                      ),
                    ),
                    sizedh20,
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: whitebg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Mobile No.",
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                      ),
                    ),
                    sizedh20,
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: whitebg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: Icon(Icons.visibility)),
                        ),
                      ),
                    ),
                    sizedh20,
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: whitebg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: Icon(Icons.visibility)),
                        ),
                      ),
                    ),
                    sizedh50,
                    sizedh20,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (builder) => SelectCountry()));
                      },
                      child: Container(
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                            color: blackbg,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Create ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: whitebg),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (builder) => LoginPage()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
