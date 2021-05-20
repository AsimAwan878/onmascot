import 'package:flutter/material.dart';

import 'package:flag/flag.dart';
import 'package:onmascota/utils/constants.dart';
import 'package:onmascota/views/widgets/custom_button.dart';

import 'create_account_partner/components/body.dart';
import 'create_account_rider/components/body.dart';

class StartScreen2 extends StatefulWidget {
  @override
  _StartScreen2State createState() => _StartScreen2State();
}

class _StartScreen2State extends State<StartScreen2> {
  String _selected;
  List<Map> _myLanguages = [
    {
      'id': '1',
      'image': 'us',
      'name': 'English',
    },
    {
      'id': '2',
      'image': 'fr',
      'name': 'French',
    },
    {
      'id': '3',
      'image': 'es',
      'name': 'Spanish',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: sizeWidth(context),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Splash-Background.png"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 19,
                          ),
                          isDense: true,
                          value: _selected,
                          onChanged: (newValue) {
                            setState(() {
                              _selected = newValue;
                            });
                          },
                          items: _myLanguages.map((myLangs) {
                            return DropdownMenuItem(
                                value: myLangs['id'].toString(),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(500)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(500),
                                        child: Flag(
                                          myLangs['image'],
                                          width: 20,
                                          height: 20,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(myLangs['name']),
                                    )
                                  ],
                                ));
                          }).toList(),
                        ),
                      )),
                    ),
                    Row(
                      children: [
                        Text("Login"),
                        Icon(
                          Icons.arrow_forward_sharp,
                          size: 17,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  width: sizeWidth(context),
                  height: sizeHeight(context) / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Logo.png',
                              height: 230,
                              width: 230,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: sizeWidth(context) / 1.8,
                              child: Text(
                                "Get connect with Onmascota! The only all in one platform for pets in Malaysia",
                                style: TextStyle(
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: sizeWidth(context) / 1.1,
                        child: Column(
                          children: [
                            CustomButton(
                              buttonText: "countinue as partners",
                              buttonColor: primaryColor,
                              textColor: Colors.white,
                              borderColor: primaryColor,
                              onPress: () =>  Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => BodyOfCreateAccountPartner())),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CustomButton(
                              buttonText: "countinue as riders",
                              buttonColor: Colors.white,
                              textColor: primaryColor,
                              borderColor: primaryColor,
                              onPress: () =>  Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => BodyOfCreateAccountRider())),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
