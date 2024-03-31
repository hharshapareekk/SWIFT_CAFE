import 'package:flutter/material.dart';
import 'package:swift_cafe_hp/pages/homePage.dart';
import 'package:swift_cafe_hp/pages/loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.white.withOpacity(0.23), BlendMode.srcOver),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bgImage.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black45.withOpacity(0.6),
                  border: Border.all(color: Colors.white, width: 0.5),
                  borderRadius: BorderRadius.circular(20)),
              height: 650,
              width: 300,
              child: Center(
                child: Column(
                  children: [
                    
                    Image.asset(
                      'assets/images/logo.png',
                      width: 70,
                      height: 70,
                    ),
                    Text(
                      "Swift",
                      style: TextStyle(
                          fontFamily: 'RalewayVariableFont',
                          fontWeight: FontWeight.w600,
                          fontSize: 64.0,
                          color: Color(0xffFFFFFF),
                          letterSpacing: 2,
                          height: 0.7),
                    ),
                    Text(
                      "Cafe",
                      style: TextStyle(
                          fontFamily: 'RalewayVariableFont',
                          fontWeight: FontWeight.w300,
                          fontSize: 40.0,
                          color: Color(0xffFFFFFF),
                          letterSpacing: 2,
                          height: 1.8),
                    ),
                    Text(
                      '"Latte but never late"',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w200,
                          fontSize: 10.0,
                          color: Color(0xffFFFFFF),
                          letterSpacing: 2,
                          height: 1.8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      style:
                          TextStyle(fontFamily: 'Inter', color: Colors.white),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        labelText: 'User Name',
                        labelStyle:
                            TextStyle(color: Colors.white, fontFamily: 'Inter'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      style:
                          TextStyle(fontFamily: 'Inter', color: Colors.white),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.white, fontFamily: 'Inter'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),


 //Login Container
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                         ),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 30),
                        )),
                      ),
                    ),

                     SizedBox(
                      height: 30,
                    ),
                    //Sign Up container
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff4D2B1A), Color(0xffA7745A)]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        child: Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 30),
                        )),
                      ),
                    ),
                   

                   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
