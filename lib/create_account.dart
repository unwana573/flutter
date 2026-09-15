import 'package:flutter/material.dart';
import 'package:sendsure/verify_account.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50,),
                    child: Column(
                        children: [
                        Icon(
                            Icons.account_circle_outlined,
                            size: 100,
                            fontWeight: FontWeight.w200,
                        ),

                        Text(
                            "Create Your Account",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                        ),

                        SizedBox(height: 20,),

                        TextFormField(
                            decoration: InputDecoration(
                                labelText: "Full Name",
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),

                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.all(Radius.circular(10))
                                ),

                                prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                )
                            ),
                        ),

                        SizedBox(height: 10,),

                        TextFormField(
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),

                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.all(Radius.circular(10))
                                ),

                                prefixIcon: Icon(
                                    Icons.phone_outlined,
                                    color: Colors.black,
                                )
                            ),
                        ),
                        
                        SizedBox(height: 10,),

                        TextFormField(
                            decoration: InputDecoration(
                                labelText: "Email Address",
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),

                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.all(Radius.circular(10))
                                ),

                                prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.black,
                                )
                            ),
                        ),

                        SizedBox(height: 10,),

                        TextFormField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),

                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.all(Radius.circular(10))
                                ),

                                prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.black,
                                )
                            ),
                        ),

                        SizedBox(height: 10,),

                        TextFormField(
                            decoration: InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),

                                border: OutlineInputBorder(
                                    borderRadius:BorderRadius.all(Radius.circular(10))
                                ),

                                prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.black,
                                )
                            ),
                        ),

                        Row(
                            children: [
                                Checkbox(
                                    value: true, 
                                    onChanged: (bool? value) {},
                                    fillColor:  WidgetStateProperty.all(const Color.fromARGB(255, 9, 20, 141)),
                                ),
                            Text(
                                "I agree the Terms and Conditions",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13
                                ),
                                ),
                            ],
                        ),

                        SizedBox(height: 50,),

                        ElevatedButton(
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                            return VerifyAccount();
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
                                        "Create Account",
                                            textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                        )
                                    ),
                            ],
                        )),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                    "Already have an account?"
                                ),

                                TextButton(
                                    onPressed: () {}, 
                                    child: Text("Sign In")
                                    )
                            ],
                        )
                    ],
                ),
                )
            ],
        ),
    );
  }
}