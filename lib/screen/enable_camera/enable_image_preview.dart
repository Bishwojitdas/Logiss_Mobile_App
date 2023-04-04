import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/back_camera/back_camera_enable.dart';
import 'package:product_delivery_app/util/color_resources.dart';
import 'package:product_delivery_app/util/styles.dart';

class EnableImagePreview extends StatefulWidget {
   XFile file;
   EnableImagePreview({Key? key, required this.file}) : super(key: key);

  @override
  State<EnableImagePreview> createState() => _EnableImagePreviewState();
}

class _EnableImagePreviewState extends State<EnableImagePreview> {
  @override
  Widget build(BuildContext context) {
    File picture=File(widget.file.path);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.file(picture, height: FullHeight(context),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 60),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorResources.grey.withOpacity(.1),
                  ),
                  child: const Icon(Icons.close, color: Colors.black,),
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                  color: ColorResources.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () async {

                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorResources.yellow,
                          ),
                          child: Center(child: Text("Save", style: titilliumBold.copyWith(color: ColorResources.white, fontSize: 20),),),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const BackCameraEnable()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorResources.grey,
                          ),
                          child: Center(child: Text("Take photo", style: titilliumBold.copyWith(color: ColorResources.black, fontSize: 20),),),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
