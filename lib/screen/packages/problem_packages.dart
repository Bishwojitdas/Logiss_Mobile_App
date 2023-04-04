import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/scan_product/scan_packages.dart';
import 'package:product_delivery_app/util/styles.dart';

class Problem_Packages extends StatefulWidget {
  const Problem_Packages({Key? key}) : super(key: key);

  @override
  State<Problem_Packages> createState() => _Problem_PackagesState();
}

bool isCheck=false;

class _Problem_PackagesState extends State<Problem_Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            
          }, icon: Icon(Icons.arrow_back, size: 25,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
           const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Choose the problem package(s)", style: titilliumRegular.copyWith(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),),
            ),
            const SizedBox(height: 15,),
            Container(
              height: FullHeight(context)/1.5,
              width: FullWidth(context),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,),
                      child: Container(
                        height: 100,
                        width: FullWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1-601", style: titilliumSemiBold.copyWith(fontSize: 18, color: Colors.black),),
                                Text("455212546", style: titilliumRegular.copyWith(fontSize: 18, color: Colors.black, height: 1.5),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.my_library_add_sharp, size: 20, color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("Medium Box", style: titilliumRegular.copyWith(fontSize: 18),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Checkbox(value: isCheck,
                              onChanged: (value) {
                                setState(() {
                                  isCheck=!isCheck;
                                });
                              },),
                          )
                        ],
                      ),
                      ),
                    )
                  ],
                ),
              ),
            ),
             const SizedBox(height: 15,),
            Container(
              width: FullWidth(context),
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const ScanPackages(),));
                  },
                  child: Container(
                    width: FullWidth(context),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text("Submit to Manager", style: titilliumBold.copyWith(fontSize: 20, color: Colors.white),textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
