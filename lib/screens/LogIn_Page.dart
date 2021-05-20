import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:multex/Widgets/TextField.dart';
import 'package:multex/Widgets/ElevatedButton.dart';

class LogInScreen extends StatelessWidget {
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
      backgroundColor: Color(0xFF112466),
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/girls.png'),
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                    //color: Colors.blue,
                    ),
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
                            Container(
                              child: Textfield(
                                hint: 'mehdi@gmail.com',
                                label: 'Email',
                              ),
                            ),
                            Textfield(
                              label: 'Password',
                            ),
                            Elevatedbutton(
                                routName: '/fourth', text: 'Sign In'),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: kColor,
                                  ),
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/third');
                              },
                              child: Container(
                                  margin: EdgeInsets.only(top: 17),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Sign Up?',
                                    style:
                                        TextStyle(color: kColor, fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
