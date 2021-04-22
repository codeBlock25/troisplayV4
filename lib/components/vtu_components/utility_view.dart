import 'package:flutter/material.dart';
import 'package:troisplay/icons/money.dart';
import 'package:troisplay/screens/vtu/vtu_system.dart';

class VTUUtilityView extends StatelessWidget {
  const VTUUtilityView(
      {Key key,
      @required this.vtuSystemType,
      @required this.meterNumberController,
      @required this.utilityPriceController,
      @required this.utilityPlan,
      @required this.upDateUtilityplan})
      : super(key: key);
  final VTUSystemType vtuSystemType;
  final TextEditingController meterNumberController;
  final TextEditingController utilityPriceController;
  final String utilityPlan;
  final void Function(String) upDateUtilityplan;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Meter Number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 45,
              child: TextField(
                controller: meterNumberController,
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
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                ),
                keyboardType: TextInputType.text,
                keyboardAppearance: Brightness.dark,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 45,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      controller: utilityPriceController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Amount',
                        prefixText: '₦',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 5),
                      ),
                      keyboardType: TextInputType.number,
                      keyboardAppearance: Brightness.dark,
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
