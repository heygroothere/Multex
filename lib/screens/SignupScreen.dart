import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:multex/Widgets/TextField.dart';
import 'package:multex/Widgets/ElevatedButton.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [IconButton(icon: Icon(Icons.info_outline), onPressed: () {})],
      ),
      backgroundColor: kColor,
      body: Column(
        children: [
          Container(
            height: 150,
            color: kColor,
          ),
          Expanded(
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    )),
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Textfield(
                          hint: 'Enter your First name',
                          label: 'First name',
                        ),
                        Textfield(
                          hint: 'Enter your Last name',
                          label: 'Last name',
                        ),
                        Textfield(
                          hint: 'Enter your Email',
                          label: 'Email',
                        ),
                        Textfield(
                          label: 'Password',
                        ),
                        Textfield(
                          label: 'Confirm Password',
                        ),
                        Elevatedbutton(routName: '/second', text: 'Sign Up'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
//     margin: EdgeInsets.only(top: 10),
//     alignment: Alignment.centerLeft,
//     child: Text(
//       '',
//       style: TextStyle(
//         color: kColor,
//       ),
//     )),
// GestureDetector(
//   onTap: () {
//     Navigator.pushNamed(context, '/fourth');
//   },
//   child: Container(
//       margin: EdgeInsets.only(top: 17),
//       alignment: Alignment.centerLeft,
//       child: Text(
//         '',
//         style: TextStyle(color: kColor, fontSize: 15),
//       )),
// ),
