import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/driver_license/driver_license.dart';
import 'package:product_delivery_app/screen/enable_camera/enable_camera.dart';
import 'package:product_delivery_app/util/images.dart';
import 'package:product_delivery_app/util/styles.dart';

class TakeAPhoto extends StatefulWidget {
  const TakeAPhoto({Key? key}) : super(key: key);

  @override
  State<TakeAPhoto> createState() => _TakeAPhotoState();
}

class _TakeAPhotoState extends State<TakeAPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 300,),
                const Icon(Icons.camera_alt, size: 100,),
                Text("Give camera access", style: titilliumBold.copyWith(fontSize: 24, color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.symmetric( vertical: 20),
                  child: Container(
                      width: FullWidth(context),
                      child: Text("You can use your camera to upload driver's license, pictures & documents", style: titilliumRegular.copyWith(fontSize: 18,
                          color: Colors.black, height: 1.5),textAlign: TextAlign.center,)),
                ),

              ],
            ),
            const Expanded(child:  SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const EnableCamera(),));
                },
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ), child: Text("Enable Camera", style: titilliumBold.copyWith(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
