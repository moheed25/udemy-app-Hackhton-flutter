import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp/home.dart';

class VerificationCode extends StatefulWidget {
  String phonenumber;
  VerificationCode({Key? key, required this.phonenumber}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  TextEditingController otpcontroller = TextEditingController();
  String verificationCode = '';
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    verifyNumber();
  }

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
              "Verification Code",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.phonenumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 45, right: 45, bottom: 20,top: 80),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                controller: otpcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Verification Code',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Colors.orange,
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
                if (otpcontroller.text.isNotEmpty &&
                    otpcontroller.text.length == 6) {
                  try {
                    await auth
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verificationCode,
                            smsCode: otpcontroller.text))
                        .then((value) async {
                      if (value.user != null) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Home()));
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    Get.snackbar('Invalid OTP',
                        'Input your correct OTP which you received via SMS',
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white);
                  }
                }
              },
              icon: const Icon(
                Icons.lock,
              ),
              label: const Text(
                "Sign In",
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

  verifyNumber() async {
    await auth.verifyPhoneNumber(
      phoneNumber: '+92${widget.phonenumber}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        auth.signInWithCredential(credential).then((value) async {
          if (value.user != null) {
            Get.snackbar('Congratulations', 'You Signed In successfully',
                snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar(
              'Invalid Number', 'The provided phone number is not valid',
              snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        verificationCode = verificationId;
        Get.snackbar('Code Sent', 'Verification Code has been sent to you',
            snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        Get.snackbar('Time Out', 'code will be sent again',
            snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
        verificationCode = verificationId;
      },
      timeout: const Duration(seconds: 60),
    );
  }
}
