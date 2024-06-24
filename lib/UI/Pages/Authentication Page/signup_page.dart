import 'package:dummy_project/UI/Pages/Authentication%20Page/login_page.dart';
import 'package:dummy_project/UI/Pages/Authentication%20Page/otp_verification_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phonenumberController = TextEditingController();

    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            )),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Signup',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 350,
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.green),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: fullController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Full Name',
                            hintText: 'Enter Full Name'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Email',
                            hintText: 'Enter Email'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: phonenumberController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Phone Number',
                            hintText: 'Enter Phone Number'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Password',
                            hintText: 'Enter Password'),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                            child: const Text('Login')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OtpVerificationPage()),
                              );
                            },
                            child: const Text('Sign Up')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
