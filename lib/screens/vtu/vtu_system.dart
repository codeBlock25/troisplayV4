import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/components/vtu_components/airtime_view.dart';
import 'package:troisplay/components/vtu_components/cable_view.dart';
import 'package:troisplay/components/vtu_components/data_view.dart';
import 'package:troisplay/components/vtu_components/utility_view.dart';
import 'package:troisplay/logic/convert.dart';

enum VTUSystemType { airtime, data, cable, utility }
enum AirtimeType { mtn, airtel, glo, nineMobile }

class VtuSystem extends StatefulWidget {
  @override
  _VtuSystemState createState() => _VtuSystemState();
}

class _VtuSystemState extends State<VtuSystem> {
  VTUSystemType vtuSystemType = VTUSystemType.airtime;
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController meterNumberController = TextEditingController();
  TextEditingController decoderIDNumberController = TextEditingController();
  TextEditingController utilityPriceController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  AirtimeType airtimeType = AirtimeType.glo;
  String _countryCode = '+234';
  String cablePlan = 'bronze ${toStrictMoney(1500)}';
  String dataPlan = '50MB for ${toStrictMoney(50)}';
  String utilityPlan = 'bronze for ${toStrictMoney(1500)}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithTitle(text: 'VTU'),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  VTUTabBar(
                    vtuSystemType: vtuSystemType,
                    func: (VTUSystemType vtuSystemUpdate) {
                      setState(() {
                        vtuSystemType = vtuSystemUpdate;
                      });
                    },
                  ),
                  if (vtuSystemType == VTUSystemType.airtime)
                    VTUAirtimeView(
                      airtimeType: airtimeType,
                      countryCodeIndex: _countryCode,
                      phoneNumberController: phoneNumberController,
                      priceController: priceController,
                      upDateAirtimeType: (AirtimeType newAirtimeType) {
                        setState(() {
                          airtimeType = newAirtimeType;
                        });
                      },
                      upDateCountrycode: (String code) {
                        setState(() {
                          _countryCode = code;
                        });
                      },
                      vtuSystemType: vtuSystemType,
                    )
                  else if (vtuSystemType == VTUSystemType.cable)
                    VTUCabelView(
                      airtimeType: airtimeType,
                      dataPlan: dataPlan,
                      countryCodeIndex: _countryCode,
                      phoneNumberController: phoneNumberController,
                      priceController: priceController,
                      upDateAirtimeType: (AirtimeType newAirtimeType) {
                        setState(() {
                          airtimeType = newAirtimeType;
                        });
                      },
                      upDateCountrycode: (String code) {
                        setState(() {
                          _countryCode = code;
                        });
                      },
                      vtuSystemType: vtuSystemType,
                    )
                  else if (vtuSystemType == VTUSystemType.data)
                    VTUDataView(
                      airtimeType: airtimeType,
                      dataPlan: dataPlan,
                      countryCodeIndex: _countryCode,
                      phoneNumberController: phoneNumberController,
                      priceController: priceController,
                      upDateAirtimeType: (AirtimeType newAirtimeType) {
                        setState(() {
                          airtimeType = newAirtimeType;
                        });
                      },
                      upDateCountrycode: (String code) {
                        setState(() {
                          _countryCode = code;
                        });
                      },
                      vtuSystemType: vtuSystemType,
                    )
                  else if (vtuSystemType == VTUSystemType.utility)
                    VTUUtilityView(
                      meterNumberController: meterNumberController,
                      utilityPriceController: utilityPriceController,
                      vtuSystemType: vtuSystemType,
                      utilityPlan: utilityPlan,
                      upDateUtilityplan: (String plan) {
                        setState(() {
                          utilityPlan = plan;
                        });
                      },
                    )
                  else
                    const SizedBox()
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Note: All TRansaction must be confirmed by the reguralty body sbefore your mney is sent or decuted.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white.withOpacity(0.56)),
                    ),
                  ),
                  FirstChoiceBtn(
                    btnText: 'Buy',
                    small: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                        onTap: () {},
                        child: const Text('Terms & Condition apply')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VTUTabBar extends StatelessWidget {
  const VTUTabBar({@required this.vtuSystemType, @required this.func});
  final VTUSystemType vtuSystemType;
  final void Function(VTUSystemType) func;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.elasticInOut,
      duration: const Duration(milliseconds: 400),
      height: 40,
      constraints: const BoxConstraints(minWidth: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF222222)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _VTUTab(
            func: func,
            lable: 'Airtime',
            vtuType: VTUSystemType.airtime,
            vtuSystemType: vtuSystemType,
          ),
          _VTUDivider(),
          _VTUTab(
            func: func,
            lable: 'Data',
            vtuType: VTUSystemType.data,
            vtuSystemType: vtuSystemType,
          ),
          _VTUDivider(),
          _VTUTab(
            func: func,
            lable: 'TV/cable',
            vtuType: VTUSystemType.cable,
            vtuSystemType: vtuSystemType,
          ),
          _VTUDivider(),
          _VTUTab(
            func: func,
            lable: 'Utility',
            vtuType: VTUSystemType.utility,
            vtuSystemType: vtuSystemType,
          ),
        ],
      ),
    );
  }
}

class _VTUDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 2,
      color: const Color(0xFF333333),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      constraints: const BoxConstraints(
          minHeight: 30, maxWidth: 4, maxHeight: 40, minWidth: 2),
    );
  }
}

class _VTUTab extends StatelessWidget {
  const _VTUTab(
      {@required this.vtuSystemType,
      @required this.func,
      @required this.lable,
      @required this.vtuType});
  final VTUSystemType vtuSystemType;
  final void Function(VTUSystemType) func;
  final String lable;
  final VTUSystemType vtuType;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(vtuSystemType == vtuType
            ? const Color(0xFF0042EC)
            : const Color(0xFF222222)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        minimumSize: MaterialStateProperty.all(Size(
            vtuSystemType == vtuType ? Get.width / 4 - 15 : Get.width / 4 - 45,
            45)),
      ),
      onPressed: () {
        func(vtuType);
      },
      child: Text(lable),
    );
  }
}
