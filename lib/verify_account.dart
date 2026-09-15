import 'package:flutter/material.dart';
import 'package:sendsure/verified_page.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Image.asset(
                "assets/images/envelop.png",
                width: 200,
                height: 200,
            ),
            ),

            Text(
              "Verify your account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),

            Text(
              "We`ve sent a 5-digit verification code \n to your email",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 50,
                    height: 130,
                    child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      counterText: '', // hides the default character counter
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color.fromARGB(255, 24, 6, 193), width: 2),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus(); // auto-jump to next box
                      }
                    },
                  ),
                )
                );
                }),
              ),

              Text(
                "Resend code in 00:30",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
                ),
              ),

              TextButton(
                onPressed: () {}, 
                child: Text(
                  "Resend code",
                  style: TextStyle(
                    color: Colors.orange
                  ),
                )
              ),

              SizedBox(height: 50),

              ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                  return VerifiedPage();
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
                              "Verify Account",
                                textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              )
                          ),
                  ],
              )),
              ],
              )
      ),    
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