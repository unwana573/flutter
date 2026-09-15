import 'package:flutter/material.dart';
import 'package:sendsure/sign_in.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          SizedBox(height: 20,),

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
              fontWeight: FontWeight.w300
            ),
          ),

          SizedBox(height: 200),
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
                  backgroundColor: const Color(0xFF0A2472),
                  fixedSize: Size(390, 50),                            
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),                                    
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

                          )
                      ),
              ],
          )),

        ],
      ),
    );
  }
}