import 'package:flutter/material.dart';
import 'package:product_delivery_app/screen/driver_license/driver_license.dart';
import 'package:product_delivery_app/screen/home_screen/home_page_screen.dart';
import 'package:product_delivery_app/screen/verify/verify%20sms.dart';
import 'package:product_delivery_app/util/images.dart';
import 'package:product_delivery_app/util/styles.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({Key? key}) : super(key: key);

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

int _value=1;

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(height: 10,),
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
            const SizedBox(height: 30,),
            Text("Choose your role", style: titilliumBold.copyWith(fontSize: 24, color: Colors.black),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Image(image:const AssetImage(Images.teamDriver),
                height: FullWidth(context)/1.5,  width: FullWidth(context),fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: FullWidth(context),
                  child: Text("Join a local team to deliver in the same area everyday,"
                      " amongest other team drivers", style: titilliumRegular.copyWith(fontSize: 18,
                      color: Colors.black),)),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {

                },child: Container(
                width: FullWidth(context),
                decoration: BoxDecoration(
                  border:_value==1? Border.all(color: Colors.black, width: 2):Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading:Image.asset(Images.teamDriverIcon, height: 50, width: 50, fit: BoxFit.cover,),
                  title: Text("Team Driver", style: titilliumBold.copyWith(fontSize: 20),),
                  subtitle: Text("Consistent & less flexible", style: titilliumRegular.copyWith(fontSize: 16),),
                  trailing: Radio(value: 1,
                      groupValue: _value,
                    activeColor: Colors.black,
                    onChanged: (int? value){
                      setState(() {
                        _value = value!;
                      });
                    },),
                ),


              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {

                },child: Container(
                width: FullWidth(context),
                decoration: BoxDecoration(
                    border:_value==2? Border.all(color: Colors.black, width: 2):Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading:const Icon(Icons.person, size: 40, color: Colors.black,),
                  title: Text("Flex Driver", style: titilliumBold.copyWith(fontSize: 20),),
                  subtitle: Text("Work anywhere & anytime", style: titilliumRegular.copyWith(fontSize: 16),),
                  trailing: Radio(value: 2,
                    groupValue: _value,
                    activeColor: Colors.black,
                    onChanged: (int? value){
                      setState(() {
                        _value = value!;
                      });
                    },),
                ),





              ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const DriverLicense(),));
                },
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ), child: Text("Next", style: titilliumBold.copyWith(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
