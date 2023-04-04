import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/choose_role/role_screen.dart';
import 'package:product_delivery_app/screen/back_camera/add_your_photo.dart';
import 'package:product_delivery_app/screen/driver_license/take_a_photo.dart';
import 'package:product_delivery_app/util/images.dart';
import 'package:product_delivery_app/util/styles.dart';

class DriverLicense extends StatefulWidget {
  const DriverLicense({Key? key}) : super(key: key);

  @override
  State<DriverLicense> createState() => _DriverLicenseState();
}

class _DriverLicenseState extends State<DriverLicense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },icon:const Icon(Icons.arrow_back, size: 25,weight: 2, color: Colors.black,),
                    ),
                    const SizedBox()
                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text("Driver's License", style: titilliumBold.copyWith(fontSize: 24, color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Container(
                      width: FullWidth(context),
                      child: Text("Take a photo of your license to confirm your identity and get approved for deliveries", style: titilliumRegular.copyWith(fontSize: 18,
                          color: Colors.black),)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Image(image:const AssetImage(Images.driverLicense),
                    height: FullWidth(context)/1.2,  width: FullWidth(context),fit: BoxFit.fill,),
                ),
              ],
            ),
            const  Expanded(child:  SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const TakeAPhoto(),));
                },
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ), child: Text("Take a photo", style: titilliumBold.copyWith(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
