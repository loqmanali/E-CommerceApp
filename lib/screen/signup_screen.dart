import 'package:e_commerce/screen/login_screen.dart';
import 'package:e_commerce/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'SingupScreen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: KMainColor,
        body: Form(
          key: _globalKey,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/img/book.png'),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          'Book Store',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * .1,
              ),
              CustomTextField(
                hint: 'Enter Your Name',
                icon: Icons.person,
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomTextField(
                hint: 'Enter Your Email',
                icon: Icons.email,
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomTextField(
                hint: 'Enter Your Password',
                icon: Icons.lock,
              ),
              SizedBox(
                height: height * .06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.black,
                    onPressed: (){
                      if(_globalKey.currentState.validate()){

                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )),
              ),
              SizedBox(
                height: height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Do you have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
