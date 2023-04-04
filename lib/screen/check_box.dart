import 'package:flutter/material.dart';
import 'package:product_delivery_app/util/styles.dart';

class CheckBoxTest extends StatefulWidget {
  const CheckBoxTest({Key? key}) : super(key: key);

  @override
  State<CheckBoxTest> createState() => _CheckBoxTestState();
}


class _CheckBoxTestState extends State<CheckBoxTest> {

  List<Map> categories=[
    {"name":"Swimming", "isChecked":false},
    {"name":"Cycling", "isChecked":false},
    {"name":"Tennis", "isChecked":false},
    {"name":"Boxing", "isChecked":false},
    {"name":"Volleyball", "isChecked":false},
    {"name":"Bowling", "isChecked":false},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic CheckBoxes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Please Choose your Favourite category", style: titilliumRegular.copyWith(fontSize: 16),),
             const SizedBox(height: 10,),
              const Divider(color: Colors.grey, thickness: 1,),
              const SizedBox(height: 10,),
              Column(
                children:
                 categories.map((favourite) {
                   return CheckboxListTile(
                     activeColor: Colors.deepPurpleAccent,
                     checkboxShape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(2)
                     ),
                     title: Text(favourite["name"]),
                   value: favourite['isChecked'],
                   onChanged: (value) {
                     setState(() {
                         favourite['isChecked']=value;
                     });
                   },);
                 }).toList()),

              const SizedBox(height: 10,),
              const Divider(color: Colors.grey, thickness: 1,),
              const SizedBox(height: 10,),

              Wrap(
                children: categories.map((favourite) {
                  if(favourite["isChecked"]==true){
                    return Card(
                      elevation: 2,
                      color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(favourite["name"], style: titilliumRegular.copyWith(fontSize: 16, color: Colors.white),),
                          SizedBox(width: 5,),
                            IconButton(onPressed: () {
                              setState(() {
                                favourite["isChecked"]==!favourite["isChecked"];
                              });
                            }, icon: Icon(Icons.delete_forever, color: Colors.white,))
                          
                          ],
                        ),
                      ),
                    );
                  }
                  return Container();
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
