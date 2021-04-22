import 'package:flutter/material.dart';
import 'package:troisplay/data/country_code.dart';
import 'package:troisplay/icons/money.dart';
import 'package:troisplay/screens/vtu/vtu_system.dart';

class VTUAirtimeView extends StatelessWidget {
  const VTUAirtimeView(
      {Key key,
      @required this.vtuSystemType,
      @required this.phoneNumberController,
      @required this.priceController,
      @required this.airtimeType,
      @required this.countryCodeIndex,
      @required this.upDateAirtimeType,
      @required this.upDateCountrycode})
      : super(key: key);
  final VTUSystemType vtuSystemType;
  final TextEditingController phoneNumberController;
  final TextEditingController priceController;
  final AirtimeType airtimeType;
  final String countryCodeIndex;
  final void Function(String) upDateCountrycode;
  final void Function(AirtimeType) upDateAirtimeType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 400,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'Mobile Number',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                height: 45,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                    color: const Color(0xFF232323),
                    border: Border.all(color: const Color(0xFFC9D8FF)),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                  value: countryCodeIndex,
                  icon: const Icon(Icons.panorama_wide_angle,
                      color: Colors.white),
                  elevation: 16,
                  underline: Container(height: 0, color: Colors.transparent),
                  onChanged: upDateCountrycode,
                  items: countryCode
                      .map<DropdownMenuItem<String>>((CountryCode value) {
                    return DropdownMenuItem<String>(
                      value: value.dialCode,
                      child: Container(
                          height: 40,
                          padding: const EdgeInsets.only(left: 10),
                          alignment: Alignment.center,
                          child: Text(value.dialCode)),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: SizedBox(
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
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                    ),
                    keyboardType: TextInputType.phone,
                    keyboardAppearance: Brightness.dark,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 100,
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
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    controller: priceController,
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
                            const EdgeInsets.symmetric(horizontal: 5)),
                    keyboardType: TextInputType.phone,
                    keyboardAppearance: Brightness.dark,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 55,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              airtimeType == AirtimeType.glo
                                  ? const Color(0xFF0042EC)
                                  : const Color(0xFF434343)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 55)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(5))),
                      onPressed: () {
                        upDateAirtimeType(AirtimeType.glo);
                      },
                      child: Image.asset(
                        'assets/brand/glo.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Glo',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 55,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              airtimeType == AirtimeType.mtn
                                  ? const Color(0xFF0042EC)
                                  : const Color(0xFF434343)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 55)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(5))),
                      onPressed: () {
                        upDateAirtimeType(AirtimeType.mtn);
                      },
                      child: Image.asset(
                        'assets/brand/mtn.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Mtn',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 55,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              airtimeType == AirtimeType.airtel
                                  ? const Color(0xFF0042EC)
                                  : const Color(0xFF434343)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 55)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(5))),
                      onPressed: () {
                        upDateAirtimeType(AirtimeType.airtel);
                      },
                      child: Image.asset(
                        'assets/brand/airtel.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Airtel',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 55,
                    height: 55,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              airtimeType == AirtimeType.nineMobile
                                  ? const Color(0xFF0042EC)
                                  : const Color(0xFF434343)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 55)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(5))),
                      onPressed: () {
                        upDateAirtimeType(AirtimeType.nineMobile);
                      },
                      child: Image.asset(
                        'assets/brand/nineMobile.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '9Mobile',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
