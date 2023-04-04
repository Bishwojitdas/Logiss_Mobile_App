import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/home_screen/home_page_screen.dart';
import 'package:product_delivery_app/util/styles.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}
var _formKey=GlobalKey<FormState>();
final _passController=TextEditingController();
final _conPassController=TextEditingController();


bool isVisibleCoPass=true;
bool isVisiblePass=true;

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {
                //  Navigator.push(context, route)
              }, icon:const Icon(Icons.arrow_back, color: Colors.black,)),

              Row(
                children: [
                  Container(
                    height: 10,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 10,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange
                    ),
                  ),
                ],
              ),
              const Padding(
               padding:  EdgeInsets.all(8.0),
               child: SizedBox(),
             )
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("Create Password", style: titilliumBold.copyWith(fontSize: 24, color: Colors.black),),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Form(
              key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _passController,
                      keyboardType: TextInputType.text,
                      obscureText: isVisiblePass? true:false,
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "Password can't be empty";
                        } else if(value.length<8){
                          return "Password must be 8 characters";
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisiblePass=!isVisiblePass;
                          });
                        }, icon: Icon(isVisiblePass ? Icons.visibility_off : Icons.visibility),),
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ), focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                      ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(fontSize: 16,)
                      ),
                    ),
                    const  SizedBox(height: 15,),
                    TextFormField(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      controller: _conPassController,
                      keyboardType: TextInputType.text,
                      obscureText: isVisibleCoPass? true:false,
                      validator: (value) {
                        if(value!.length==null || value.length==0){
                          return "Password can't be empty";
                        } else if(_conPassController.text!=_passController.text){
                          return "Password is not matched";
                        }
                      },
                      decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              isVisibleCoPass=!isVisibleCoPass;
                            });
                          }, icon: Icon(isVisibleCoPass ? Icons.visibility_off : Icons.visibility),),
                          contentPadding: const EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                          ), focusedErrorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 0.5)
                      ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.black, width: 1)
                          ),
                          hintText: "Confirm Password",
                          hintStyle: const TextStyle(fontSize: 16,)
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                if(_formKey.currentState!.validate()){
                  _passController.clear();
                  _conPassController.clear();
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreenPage(),));
                }
              },child: Container(
              width: FullWidth(context),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10, vertical: 15),
                child: Text("Continue", style: titilliumBold.copyWith(fontSize: 18, color: Colors.white),textAlign: TextAlign.center,),
              ),

            ),
            ),
          )

        ],
      ),
    );
  }
}
