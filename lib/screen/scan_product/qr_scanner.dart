import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:product_delivery_app/util/styles.dart';

class GenerateQRpage extends StatefulWidget {
  const GenerateQRpage({Key? key}) : super(key: key);

  @override
  State<GenerateQRpage> createState() => _GenerateQRpageState();
}



class _GenerateQRpageState extends State<GenerateQRpage> {

  var controller=TextEditingController();
  var getResult="Qr Code Result";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Generator"),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  scanQrCode();
                });
              }, child: Text("Scan QR",style: titilliumRegular.copyWith(fontSize: 16))),
              const SizedBox(height: 15,),
              Text(getResult,
                style: titilliumRegular.copyWith(fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scanQrCode() async {
    try{
      final qrCode=await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      if(!mounted) return;
      setState(() {
        getResult=qrCode;
      });
      print("QRCode Result:---");
      print(qrCode);
    }
    on PlatformException{
      getResult="Failed to scan QR Code";
    }
  }
}
