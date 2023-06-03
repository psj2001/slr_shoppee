import 'package:flutter/material.dart';
import 'package:slr_shoppee/const.dart';
import 'package:slr_shoppee/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "Welcome Back",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              Text(
                "Login to continue",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              sizedh50,
              sizedh50,
              Container(
                height: 380,
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
                    sizedh10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("Are you forget password ?       ")],
                    ),
                    sizedh50,
                    sizedh20,
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: blackbg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: yellowbg),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizedh50,
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (builder) => SignUpPage()));
                },
                child: Text(
                  "Create new account >",
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
