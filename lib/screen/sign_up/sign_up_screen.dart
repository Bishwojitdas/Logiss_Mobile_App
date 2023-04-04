import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/check_box.dart';
import 'package:product_delivery_app/screen/create_password/create_password_screen.dart';
import 'package:product_delivery_app/screen/packages/problem_packages.dart';
import 'package:product_delivery_app/screen/scan_product/qr_scanner.dart';
import 'package:product_delivery_app/screen/verify/verify_phone_screen.dart';
import 'package:product_delivery_app/util/color_resources.dart';
import 'package:product_delivery_app/util/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen> {

  var _formKey=GlobalKey<FormState>();

  final _firstNameController=TextEditingController();
  final _lastNameController=TextEditingController();
  final _emailController=TextEditingController();
  final _homeZipCodeController=TextEditingController();


  bool allFieldsFilled=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController.addListener(_checkAllFieldsFilled);
    _lastNameController.addListener(_checkAllFieldsFilled);
    _emailController.addListener(_checkAllFieldsFilled);
    _homeZipCodeController.addListener(_checkAllFieldsFilled);
    _firstNameFocusNode=FocusNode();
    _lastNameFocusNode=FocusNode();
  }

  void _checkAllFieldsFilled(){
    setState(() {
    allFieldsFilled= _firstNameController.text.isNotEmpty &&
      _lastNameController.text.isNotEmpty &&
      _emailController.text.isNotEmpty &&
      _homeZipCodeController.text.isNotEmpty;
    });
  }

  late FocusNode _firstNameFocusNode;
  late FocusNode _lastNameFocusNode;
  // late FocusNode _focusNode;

  @override
  void dispose() {
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back, size: 25, color: Colors.white,)),
        title: Text("Sign Up", style: titilliumSemiBold.copyWith(fontSize: 18),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePasswordScreen(),));
          }, icon:const Icon(Icons.create, color: Colors.white,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _firstNameController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "First name can't be empty";
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                        ),
                          errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                        ), focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                      ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                        hintText: "First Name",
                        hintStyle: const TextStyle(fontSize: 16,)
                      ),
                    ),
                  const  SizedBox(height: 10,),
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _lastNameController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "last name can't be empty";
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          focusedErrorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                          hintText: "Last Name",
                          hintStyle: const TextStyle(fontSize: 16,)
                      ),
                    ),
                  const  SizedBox(height: 10,),
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "email can't be empty";
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          focusedErrorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                          hintText: "Email address",
                          hintStyle: const TextStyle(fontSize: 16,)
                      ),
                    ),
                    const  SizedBox(height: 10,),
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _homeZipCodeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                          focusedErrorBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          hintText: "Home Zip Code",
                          hintStyle: const TextStyle(fontSize: 16,)
                      ),
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "home zip code can't be empty";
                        }
                      },
                    ),
                  const SizedBox(height: 40,),

                  InkWell(onTap: () {
                    if(_formKey.currentState!.validate()){
                      allFieldsFilled? Navigator.push(context, MaterialPageRoute(builder: (context) =>const VerifyPhone(),)):const SizedBox();
                    }
                  },
                    child: Container(
                      // height: 60,
                      //width: FullWidth(context)/1.5,
                      decoration: BoxDecoration(
                          color:allFieldsFilled? Colors.orange:ColorResources.GREY,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        child: Text("Next", style: titilliumBold.copyWith(color:allFieldsFilled? Colors.white:Colors.black, fontSize: 20),
                          textAlign: TextAlign.center,),
                      ),
                    ),),


                  ],
                ),
              )),
        ],
      ),
    );
  }
}
