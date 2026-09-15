import 'package:flutter/material.dart';
import 'package:sendsure/forget_pwd.dart';
import 'package:sendsure/home.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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

              const Icon(
                    Icons.account_circle_outlined,
                    size: 100,
                  ),

              SizedBox(height: 20),

              Text(
                "Welcome Back",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email or Phone Number",
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.person, 
                    color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outline, 
                    color: Colors.black),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(190, 0, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context){
                          return ForgetPwd();
                        }
                        )
                    );
                  },
                  child: Text(
                    "Forgot Password?",                    
                    style: TextStyle(
                      color: Color(0xFF033977),
                      
                    ),
                  )
                ),
              ),

              SizedBox(height: 200,),

              ElevatedButton(
              onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                              return Home();
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
                          "Continue",
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
        ]
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