import 'package:flutter/material.dart';
import 'package:login_dash_animations/animations/fadeAnimation.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/home.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      2.4,
                      Text(
                        "Best waves for",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    FadeAnimation(
                      2.6,
                      Text(
                        ".surfing",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(
                        2.8,
                        CustomButton(
                          label: "Sign up",
                          background: Colors.transparent,
                          fontColor: Colors.white,
                          borderColor: Colors.white,
                        )),
                    SizedBox(height: 20),
                    FadeAnimation(
                        3.2,
                        CustomButtonAnimation(
                          label: "Sign In",
                          backbround: Colors.white,
                          borderColor: Colors.white,
                          fontColor: Color(0xFFF001117),
                          child: LoginScreen(),
                        )),
                    SizedBox(height: 30),
                    FadeAnimation(
                      3.4,
                      Text(
                        "Forgot password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
