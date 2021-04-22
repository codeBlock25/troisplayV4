import 'package:flutter/material.dart';
import 'package:troisplay/icons/money.dart';
import 'package:troisplay/logic/convert.dart';
import 'package:troisplay/screens/vtu/vtu_system.dart';

List<String> cabelPlans = <String>[
  '50MB for ${toStrictMoney(50)}',
  '100MB for ${toStrictMoney(100)}',
  '250MB for ${toStrictMoney(200)}',
  '750MB for ${toStrictMoney(500)}',
  '1.5GB for ${toStrictMoney(1000)}',
  '4GB for ${toStrictMoney(3000)}',
  '20GB for ${toStrictMoney(10000)}',
];

List<String> dataPlans = <String>[
  'bronze for ${toStrictMoney(1500)}',
  'siliver for ${toStrictMoney(2500)}',
  'gold for ${toStrictMoney(5000)}',
  'premium for ${toStrictMoney(9000)}',
  'max premium for ${toStrictMoney(12000)}',
];

class VTUCabelView extends StatelessWidget {
  const VTUCabelView(
      {Key key,
      @required this.vtuSystemType,
      @required this.phoneNumberController,
      @required this.priceController,
      @required this.airtimeType,
      @required this.dataPlan,
      @required this.countryCodeIndex,
      @required this.upDateAirtimeType,
      @required this.upDateCountrycode})
      : super(key: key);
  final VTUSystemType vtuSystemType;
  final TextEditingController phoneNumberController;
  final TextEditingController priceController;
  final AirtimeType airtimeType;
  final String countryCodeIndex;
  final String dataPlan;
  final void Function(String) upDateCountrycode;
  final void Function(AirtimeType) upDateAirtimeType;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          'Cable Box Number',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 45,
        child: TextField(
          controller: phoneNumberController,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: '701122334',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          keyboardType: TextInputType.phone,
          keyboardAppearance: Brightness.dark,
        ),
      ),
      Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF263456),
              borderRadius: BorderRadius.circular(5),
            ),
            child: CustomPaint(
              painter: MoneyIcon(),
              size: const Size(25, 25),
            ),
          ),
          Expanded(
            child: Container(
              height: 45,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFF232323),
                  border: Border.all(color: const Color(0xFFC9D8FF)),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<String>(
                value: dataPlan,
                icon: const Icon(Icons.alarm_add_outlined, color: Colors.white),
                elevation: 16,
                underline: Container(height: 0, color: Colors.transparent),
                onChanged: upDateCountrycode,
                items:
                    dataPlans.map<DropdownMenuItem<String>>((String dataPlan) {
                  return DropdownMenuItem<String>(
                    value: dataPlan,
                    child: Container(
                        height: 40,
                        padding: const EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        child: Text(dataPlan)),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
