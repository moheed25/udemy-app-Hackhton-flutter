import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp/verification_code.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController numcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/3.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.2),
              width: double.infinity,
            ),
            const Text(
              "OTP Generate",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const Text(
              "Login with Phone Number",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: 45,
                  right: 45,
                  bottom: 10),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                controller: numcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  filled: true,
                  prefixIcon: Container(
                    width:55,
                    alignment: Alignment.center,
                    child: const Text(
                      '+92',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () async {
                if (numcontroller.text.isNotEmpty &&
                    numcontroller.text.length == 10) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationCode(
                              phonenumber: numcontroller.text)));
                } else {
                  Get.snackbar('Invalid Number',
                      "Write your phone number correctly e.g. +923402119211",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.white);
                }
              },
              icon: const Icon(
                Icons.lock,
              ),
              label: const Text(
                "Get OTP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
                side: const BorderSide(color: Colors.white, width: 2),
                minimumSize: const Size(150, 50),
                primary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
