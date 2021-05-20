import 'package:flutter/material.dart';

class BodyOfCreateAccountRider extends StatefulWidget {
  @override
  _BodyOfCreateAccountPartnerState createState() =>
      _BodyOfCreateAccountPartnerState();
}

class _BodyOfCreateAccountPartnerState
    extends State<BodyOfCreateAccountRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      "assets/images/Create Partner Page Background.png"
                  ),
                ),
              ),
              child: Center(
                child: Text("Sign Up",
                    style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0

                    )),
              ),
            ),
          ],
        ),
      ),
      // width: MediaQuery.of(context).size.width,
      // // decoration: BoxDecoration(
      // //   image: DecorationImage(
      // //     image: Image.asset(name)
      // //   )
      // // ),
      // child: Column(
      //   children: [
      //     Container(),
      //     Container(
      //       width: 200.0,
      //       height: 200.0,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(100.0),
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Spacer(),
      //   ],
      // ),
    );
  }
}
