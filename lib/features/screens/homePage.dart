import 'package:flutter/material.dart';
import 'package:nsexpress_assignment/features/screens/signInPage.dart';
import 'package:nsexpress_assignment/features/screens/signUpPage.dart';
import 'package:nsexpress_assignment/widgets/customButtons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 67),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Center(
                    child: Image(
                      image: AssetImage('asset/logo.png'),
                    ),
                  ),
                ),
                Column(children: [
                  const Text(
                    "Welcome to Trackizer",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 400),
                  CustomButton(
                    text: 'Sign In',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SignInPage(),
                        ),
                      );
                    },
                    fontSize: 20,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: CustomButton2(
                      text: 'Get started, It is free!',
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SignUpPage(),
                          ),
                        );
                      },
                      fontSize: 20,
                    ),
                  ),
                ]),
              ]),
        ),
      ),
    );
  }
}
