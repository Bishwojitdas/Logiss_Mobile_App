import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:product_delivery_app/screen/home_screen/home_page_screen.dart';
import 'package:product_delivery_app/screen/verify/verify%20sms.dart';
import 'package:product_delivery_app/util/styles.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}



class _VerifyPhoneState extends State<VerifyPhone> {

  TextEditingController firstNameController = TextEditingController();

  var _formkey=GlobalKey<FormState>();

  bool allFieldsFilled = false;
  @override
  void initState() {
    super.initState();
    firstNameController.addListener(_checkAllFieldsFilled);
  }

  void _checkAllFieldsFilled() {
    setState(() {
      allFieldsFilled = firstNameController.text.isNotEmpty;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    },icon:const Icon(Icons.arrow_back, size: 25, color: Colors.black,),
                ),
               Row(children: [
                 Container(
                   height: 10,
                   width: 15,
                   decoration: BoxDecoration(
                     color: Colors.orange,
                     borderRadius: BorderRadius.circular(8)
                   ),
                 ),
                const SizedBox(width: 8,),
                 Container(
                   height: 10,
                   width: 35,
                   decoration: BoxDecoration(
                       color: Colors.orange,
                       borderRadius: BorderRadius.circular(8)
                   ),
                 )
               ],),
               const SizedBox(),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text("Verify Phone Number", style: titilliumBold.copyWith(fontSize: 25, color: Colors.black),),
            ),
            Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const SizedBox(height: 50,),
                    IntlPhoneField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        hintText: "Phone",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),

                    InkWell(
                      onTap: () {
                        setState(() {
                         allFieldsFilled? Navigator.push(context, MaterialPageRoute(builder: (context) =>const VerifySms(),)):const SizedBox();
                        });
                        },
                      child: Container(
                        padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                        decoration: BoxDecoration(color:allFieldsFilled? Colors.orange:Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        ), child: Text("Submit", style: titilliumBold.copyWith(fontSize: 20, color: Colors.white)),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),

    );
  }
}
