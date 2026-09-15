import 'package:flutter/material.dart';
import 'package:sendsure/sign_in.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

          Center(
            child: Icon(
              Icons.verified,
              color: Colors.green,
              size: 100,
            )
          ),

          SizedBox(height: 20,),

          Text(
            "Account Verified",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900
            ),
          ),

          SizedBox(height: 100),

          Text(
            "Your SENDSURE account is now secure \n You can send and track \n your package ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black
            ),
          ),

          SizedBox(height: 230),
          // Spacer(flex: 20,),

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
          ),
        ),

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