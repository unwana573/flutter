import 'package:flutter/material.dart';
import 'package:sendsure/sign_in.dart';

class ResetPwd extends StatelessWidget {
  const ResetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

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
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [          
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500
                ),
              ),

              SizedBox(height: 40,),

              Text(
                "Enter your new password",
                style: TextStyle(
                  fontSize: 22
                ),
              ),

              SizedBox(height: 40,),

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

              SizedBox(height: 30,),

              Text(
                "Password must contain at least 8 characters, \n 1 uppercase letter and 1 number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17
                ),
              ),

              SizedBox(height: 220,),

              ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context){
                                return SignIn();
                            }
                            )
                    );
                }, 
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF033977),
                    fixedSize: Size(390, 50),                            
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),                                    
                    ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                            "Reset",
                              textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17
                            )
                        ),
              ],
          )
          ),

            ],
          )
        )
      ],
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