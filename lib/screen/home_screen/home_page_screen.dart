import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/sign_up/sign_up_screen.dart';
import 'package:product_delivery_app/screen/verify/verify_phone_screen.dart';
import 'package:product_delivery_app/util/images.dart';
import 'package:product_delivery_app/util/styles.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: FullHeight(context),
          width: FullWidth(context),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: FullHeight(context)/2.2,
                  width: FullWidth(context),
                  child: Image.asset(Images.homeDelivery, fit: BoxFit.fill,),
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: FullWidth(context)/1.2,
                child: Text("Get paid today to deliver packages", style: titilliumBold.copyWith(
                  fontSize: 30, color: Colors.black
                ),),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUpScreen(),));

                    });
                  },child: Container(
                  width: FullWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10, vertical: 15),
                    child: Text("Sign Up", style: titilliumBold.copyWith(fontSize: 18, color: Colors.white),textAlign: TextAlign.center,),
                  ),

                ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>const VerifyPhone( ),));

                    });
                  },child: Container(
                  width: FullWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10, vertical: 15),
                    child: Text("Login", style: titilliumBold.copyWith(fontSize: 18, color: Colors.white),textAlign: TextAlign.center,),
                  ),

                ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
