

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:product_delivery_app/util/color_resources.dart';
import 'package:product_delivery_app/util/custom_themes.dart';
import 'package:product_delivery_app/util/dimensions.dart';
import 'package:product_delivery_app/util/images.dart';

class NoInternetOrDataScreen extends StatelessWidget {
  final bool isNoInternet;
  final Widget child;
  NoInternetOrDataScreen({required this.isNoInternet, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.025),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset(isNoInternet ? Images.no_internet : Images.no_data, width: 150, height: 150),
            Text(isNoInternet ? "OPPS" : "sorry", style: ubuntuBold.copyWith(
              fontSize: 30,
              color: isNoInternet ? Theme.of(context).textTheme.bodyText1!.color : ColorResources.COLUMBIA_BLUE,
            )),
            const SizedBox(height: Dimensions.paddingSizeExtraSmall),
            Text(
              isNoInternet ? "No Internet Connection" : 'No data found',
              textAlign: TextAlign.center,
              style: ubuntuRegular,
            ),
            const SizedBox(height: 40),
            isNoInternet ? Container(
              height: 45,
              margin:const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: ColorResources.HINT_TEXT_COLOR),
              child: TextButton(
                onPressed: () async {
                  if(await Connectivity().checkConnectivity() != ConnectivityResult.none) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => child));
                  }
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("RETRY", style: ubuntuBold.copyWith(color: Theme.of(context).highlightColor,
                      fontSize: Dimensions.fontSizeLarge)),
                ),
              ),
            ) :const SizedBox.shrink(),

          ],
        ),
      ),
    );
  }
}
