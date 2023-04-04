import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_delivery_app/screen/choose_role/role_screen.dart';
import 'package:product_delivery_app/screen/verify/verify_phone_screen.dart';
import 'package:product_delivery_app/util/styles.dart';

class VerifySms extends StatefulWidget {
  const VerifySms({Key? key}) : super(key: key);

  @override
  State<VerifySms> createState() => _VerifySmsState();
}

class _VerifySmsState extends State<VerifySms> {


  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  var _formKey=GlobalKey<FormState>();

  bool allFieldsFilled = false;
  @override
  void initState() {
    super.initState();
    otp1Controller.addListener(_checkAllFieldsFilled);
    otp2Controller.addListener(_checkAllFieldsFilled);
    otp3Controller.addListener(_checkAllFieldsFilled);
    otp4Controller.addListener(_checkAllFieldsFilled);
  }

  void _checkAllFieldsFilled() {
    setState(() {
      allFieldsFilled = otp1Controller.text.isNotEmpty &
      otp2Controller.text.isNotEmpty &
      otp3Controller.text.isNotEmpty &
       otp4Controller.text.isNotEmpty;
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
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text("Enter SMS Code", style: titilliumBold.copyWith(fontSize: 25, color: Colors.black),),
            ),
            Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 60, width: 55,
                              child: TextField(
                                controller: otp1Controller,
                                onChanged: (value) {
                                 if( value.length==1){
                                  FocusScope.of(context).nextFocus();
                                 }
                                },
                                decoration:const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide()
                                  ),
                                ),
                                style: titilliumRegular.copyWith(
                                  fontSize: 18, color: Colors.black
                                ),textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                          ),
                          SizedBox(
                            height: 60, width: 55,
                            child: TextField(
                              controller: otp2Controller,
                              onChanged: (value) {
                                if( value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration:const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide()
                                ),
                              ),
                              style: titilliumRegular.copyWith(
                                  fontSize: 18, color: Colors.black
                              ),textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60, width: 55,
                            child: TextField(
                              controller: otp3Controller,
                              onChanged: (value) {
                                if( value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration:const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide()
                                ),
                              ),
                              style: titilliumRegular.copyWith(
                                  fontSize: 18, color: Colors.black
                              ),textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60, width: 55,
                            child: TextField(
                              controller: otp4Controller,
                              onChanged: (value) {
                                if( value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              decoration:const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide()
                                ),
                              ),
                              style: titilliumRegular.copyWith(
                                  fontSize: 18, color: Colors.black
                              ),textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      TextButton(onPressed: () {
                        setState(() {

                          allFieldsFilled?Navigator.push(context, MaterialPageRoute(builder: (context) =>const ChooseRoleScreen(),)):const SizedBox();

                        });
                      }, child: Text("Resend Code", style: titilliumSemiBold.copyWith(fontSize: 16, color: Colors.black),))

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
