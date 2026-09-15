import 'package:flutter/material.dart';
import 'package:sendsure/reset_pwd.dart';

class ForgetPwd extends StatelessWidget {
  const ForgetPwd({super.key});

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

              Icon(
                Icons.lock_outline,
                color: Color(0xFF033977),
                size: 100,
              ),

              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900
                ),
              ),

              SizedBox(height: 30,),

              Text(
                "Enter your Email address and \n we`ll send you a link to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              ),

              SizedBox(height: 30,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Email address",
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.person, 
                    color: Colors.black),
                ),
              ),

              SizedBox(height: 250,),

              ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context){
                                return ResetPwd();
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
                            "Send Resend Link",
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
          ),
        )

        ],
      )
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