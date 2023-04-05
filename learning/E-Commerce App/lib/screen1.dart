import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 60.0),
                child: const Text(
                  'Login your account',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'fonts/Poppins-BlackItalic.ttf',
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Enter your username',
                      prefixIcon: Icon(
                        Icons.mail,
                      )
                  ),
                    onChanged: (val){
                      email = val;
                      print("email = $email");
                    }
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                        prefixIcon: Icon(
                          Icons.key,
                        )
                      ),
                    onChanged: (val){
                      password = val;
                      print("password = $password");
                    }
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: (){
                  print("Forgotton Password.");
                },
                child: const Text('Forgot Password?'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: 350.0 ,
              child: RawMaterialButton(
                fillColor: const Color(0xFF0069FE),
                elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                    if(email == '1234' && password == '1234'){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    }
                  },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                )
              ),
            ),
          ],
        );
    }
}
