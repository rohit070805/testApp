import 'package:flutter/material.dart';
import 'package:testapp/main.dart';
import 'package:testapp/pages/LoginScreen.dart';
import 'package:testapp/utils/colors.dart';
import 'package:testapp/utils/components.dart';
import 'package:testapp/pages/ViewAttendance.dart';
class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  TextEditingController name= TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(



      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.bgColor2,
              AppColors.bgColor,

            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 100,

              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/images/presencepro.png'),
                      fit: BoxFit.fitWidth
                  )
              ),),
            Container(
              child: Column(
                children: [
                  Components().InputBox(name,"Name",Icon(Icons.person)),
                  SizedBox(height: 20,),
                  Components().InputBox(email,"Email",Icon(Icons.email)),
                  SizedBox(height: 20,),
                  Components().InputBox(pass,"Password",Icon(Icons.lock)),
                  SizedBox(height:40,),
                  SizedBox(
                    width: screenwidth*0.6,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.bgColor2),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAttendanceScreen()));

                        },
                        child: Text("SignUp",style: TextStyle(color: AppColors.white),)),
                  ),

                ],
              ),
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have a Account?",style: TextStyle(color: AppColors.white,fontSize: 18),),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginScreen()));
                  },
                    child: Text('LogIn!',style: TextStyle(color: AppColors.primary,fontSize: 18,fontWeight: FontWeight.bold),
                    )),
              ],
            )

          ],
        ),
      ),
    );
  }
}


