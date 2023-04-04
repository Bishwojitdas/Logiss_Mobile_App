import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/back_camera/enable_back_image_preview.dart';
import 'package:product_delivery_app/screen/choose_role/role_screen.dart';
import 'package:product_delivery_app/screen/driver_license/driver_license.dart';
import 'package:product_delivery_app/screen/smile_photo/smile_photo.dart';
import 'package:product_delivery_app/util/images.dart';
import 'package:product_delivery_app/util/styles.dart';

class AddYourPhoto extends StatefulWidget {
  const AddYourPhoto({Key? key}) : super(key: key);

  @override
  State<AddYourPhoto> createState() => _AddYourPhotoState();
}

class _AddYourPhotoState extends State<AddYourPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },icon:const Icon(Icons.arrow_back, size: 25,weight: 2, color: Colors.black,),
                    ),
                    const Expanded(child:  SizedBox())
                  ],
                ),
                const SizedBox(height: 20,),
                Text("Add your photo", style: titilliumBold.copyWith(fontSize: 24, color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.symmetric( vertical: 20),
                  child: Container(
                      width: FullWidth(context),
                      child: Text("To ensure your account is secure"
                          "take a photo of your face so we can match it to our license", style: titilliumRegular.copyWith(fontSize: 18,
                          color: Colors.black),)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Image(image:const AssetImage(Images.faceImage),
                    height: FullWidth(context)/1.5,  width: FullWidth(context),fit: BoxFit.cover,),
                ),
              ],
            ),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SmilePhoto(),));
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
