import 'package:flutter/material.dart';
import 'package:sendsure/sign_in.dart';
import 'package:sendsure/verify_account.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Curved header
            Container(
              height: 160,
              width: double.infinity,
              decoration: const BoxDecoration(
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BottomRightArcClipper(),
                    child: Container(
                      color: const Color(0xFF033977),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                children: [
                  const Icon(
                    Icons.account_circle_outlined,
                    size: 100,
                  ),

                  const Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.person, color: Colors.black),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.phone_outlined, color: Colors.black),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.black),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.lock_outline, color: Colors.black),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.lock_outline, color: Colors.black),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        fillColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 9, 20, 141),
                        ),
                      ),
                      const Text(
                        "I agree the Terms and Conditions",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const VerifyAccount();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF033977),
                      fixedSize: const Size(390, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context){
                              return SignIn();
                              
                            }
                            )
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(0xFF033977),
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomRightArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width * 0.5, 0);
    path.quadraticBezierTo(
      size.width * 0.5, size.height * 0.9,
      0, size.height * 0.9,
    );
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}