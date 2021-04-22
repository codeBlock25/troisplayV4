//Add this CustomPaint widget to the Widget Tree
import 'package:flutter/material.dart';

// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class MoneyIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.5187285, size.height * 0.6641719);
    path_0.lineTo(size.width * 0.5661211, size.height * 0.8625508);
    path_0.lineTo(size.width * 0.9923711, size.height * 0.8625508);
    path_0.cubicTo(size.width * 0.9965840, size.height * 0.8625508, size.width,
        size.height * 0.8591348, size.width, size.height * 0.8549219);
    path_0.lineTo(size.width, size.height * 0.6738359);
    path_0.cubicTo(
        size.width,
        size.height * 0.6780469,
        size.width * 0.5187285,
        size.height * 0.6641719,
        size.width * 0.5187285,
        size.height * 0.6641719);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff78c2a4).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.4635391, size.height * 0.6566563);
    path_1.cubicTo(size.width * 0.4635391, size.height * 0.6566563, 0,
        size.height * 0.6780469, 0, size.height * 0.6738340);
    path_1.lineTo(0, size.height * 0.8549199);
    path_1.cubicTo(
        0,
        size.height * 0.8591328,
        size.width * 0.003416016,
        size.height * 0.8625488,
        size.width * 0.007628906,
        size.height * 0.8625488);
    path_1.lineTo(size.width * 0.4338789, size.height * 0.8625488);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff78c2a4).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.007628906, size.height * 0.1374492);
    path_2.cubicTo(size.width * 0.003416016, size.height * 0.1374492, 0,
        size.height * 0.1408652, 0, size.height * 0.1450801);
    path_2.lineTo(0, size.height * 0.6738359);
    path_2.cubicTo(
        0,
        size.height * 0.6780488,
        size.width * 0.003416016,
        size.height * 0.6814648,
        size.width * 0.007628906,
        size.height * 0.6814648);
    path_2.lineTo(size.width * 0.4338789, size.height * 0.6814648);
    path_2.lineTo(size.width * 0.4868867, size.height * 0.1374512);
    path_2.lineTo(size.width * 0.007628906, size.height * 0.1374512);
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.9923711, size.height * 0.1374492);
    path_3.lineTo(size.width * 0.5661211, size.height * 0.1374492);
    path_3.lineTo(size.width * 0.5123613, size.height * 0.6814629);
    path_3.lineTo(size.width * 0.9923730, size.height * 0.6814629);
    path_3.cubicTo(
        size.width * 0.9965859,
        size.height * 0.6814629,
        size.width * 1.000002,
        size.height * 0.6780469,
        size.width * 1.000002,
        size.height * 0.6738340);
    path_3.lineTo(size.width * 1.000002, size.height * 0.1450801);
    path_3.cubicTo(
        size.width,
        size.height * 0.1408652,
        size.width * 0.9965840,
        size.height * 0.1374492,
        size.width * 0.9923711,
        size.height * 0.1374492);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.4699082, size.height * 0.1978770);
    path_4.lineTo(size.width * 0.1495996, size.height * 0.1978770);
    path_4.cubicTo(
        size.width * 0.1473945,
        size.height * 0.1978770,
        size.width * 0.1455430,
        size.height * 0.1995938,
        size.width * 0.1454434,
        size.height * 0.2017969);
    path_4.cubicTo(
        size.width * 0.1434531,
        size.height * 0.2456797,
        size.width * 0.1082305,
        size.height * 0.2809023,
        size.width * 0.06434766,
        size.height * 0.2828906);
    path_4.cubicTo(
        size.width * 0.06214453,
        size.height * 0.2829902,
        size.width * 0.06042773,
        size.height * 0.2848418,
        size.width * 0.06042773,
        size.height * 0.2870469);
    path_4.lineTo(size.width * 0.06042773, size.height * 0.5318652);
    path_4.cubicTo(
        size.width * 0.06042773,
        size.height * 0.5340703,
        size.width * 0.06214453,
        size.height * 0.5359219,
        size.width * 0.06434766,
        size.height * 0.5360215);
    path_4.cubicTo(
        size.width * 0.1082305,
        size.height * 0.5380098,
        size.width * 0.1434531,
        size.height * 0.5732324,
        size.width * 0.1454434,
        size.height * 0.6171152);
    path_4.cubicTo(
        size.width * 0.1455430,
        size.height * 0.6193184,
        size.width * 0.1473945,
        size.height * 0.6210352,
        size.width * 0.1495996,
        size.height * 0.6210352);
    path_4.lineTo(size.width * 0.4338789, size.height * 0.6210352);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffccf49f).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path();
    path_5.moveTo(size.width * 0.9356523, size.height * 0.2828926);
    path_5.cubicTo(
        size.width * 0.8917695,
        size.height * 0.2809043,
        size.width * 0.8565469,
        size.height * 0.2456816,
        size.width * 0.8545566,
        size.height * 0.2017988);
    path_5.cubicTo(
        size.width * 0.8544570,
        size.height * 0.1995957,
        size.width * 0.8526055,
        size.height * 0.1978789,
        size.width * 0.8504004,
        size.height * 0.1978789);
    path_5.lineTo(size.width * 0.5304023, size.height * 0.1978789);
    path_5.lineTo(size.width * 0.5661211, size.height * 0.6210371);
    path_5.lineTo(size.width * 0.8504004, size.height * 0.6210371);
    path_5.cubicTo(
        size.width * 0.8526055,
        size.height * 0.6210371,
        size.width * 0.8544570,
        size.height * 0.6193203,
        size.width * 0.8545566,
        size.height * 0.6171172);
    path_5.cubicTo(
        size.width * 0.8565469,
        size.height * 0.5732344,
        size.width * 0.8917695,
        size.height * 0.5380117,
        size.width * 0.9356523,
        size.height * 0.5360234);
    path_5.cubicTo(
        size.width * 0.9378555,
        size.height * 0.5359238,
        size.width * 0.9395723,
        size.height * 0.5340723,
        size.width * 0.9395723,
        size.height * 0.5318672);
    path_5.lineTo(size.width * 0.9395723, size.height * 0.2870469);
    path_5.cubicTo(
        size.width * 0.9395723,
        size.height * 0.2848418,
        size.width * 0.9378555,
        size.height * 0.2829922,
        size.width * 0.9356523,
        size.height * 0.2828926);
    path_5.close();

    final Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffccf49f).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    final Path path_6 = Path();
    path_6.moveTo(size.width * 0.1354355, size.height * 0.5807949);
    path_6.cubicTo(
        size.width * 0.1412969,
        size.height * 0.5916953,
        size.width * 0.1448496,
        size.height * 0.6040195,
        size.width * 0.1454434,
        size.height * 0.6171152);
    path_6.cubicTo(
        size.width * 0.1455430,
        size.height * 0.6193184,
        size.width * 0.1473945,
        size.height * 0.6210352,
        size.width * 0.1495996,
        size.height * 0.6210352);
    path_6.lineTo(size.width * 0.4635391, size.height * 0.6210352);
    path_6.lineTo(size.width * 0.4338789, size.height * 0.5807930);
    path_6.lineTo(size.width * 0.1354355, size.height * 0.5807930);
    path_6.close();

    final Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffb3e59f).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    final Path path_7 = Path();
    path_7.moveTo(size.width * 0.9356523, size.height * 0.2828926);
    path_7.cubicTo(
        size.width * 0.8917695,
        size.height * 0.2809043,
        size.width * 0.8565469,
        size.height * 0.2456816,
        size.width * 0.8545566,
        size.height * 0.2017988);
    path_7.cubicTo(
        size.width * 0.8544570,
        size.height * 0.1995957,
        size.width * 0.8526055,
        size.height * 0.1978789,
        size.width * 0.8504004,
        size.height * 0.1978789);
    path_7.lineTo(size.width * 0.7840820, size.height * 0.1978789);
    path_7.cubicTo(
        size.width * 0.7978594,
        size.height * 0.2235039,
        size.width * 0.8243828,
        size.height * 0.2412578,
        size.width * 0.8551699,
        size.height * 0.2426523);
    path_7.cubicTo(
        size.width * 0.8573730,
        size.height * 0.2427520,
        size.width * 0.8590898,
        size.height * 0.2446035,
        size.width * 0.8590898,
        size.height * 0.2468086);
    path_7.lineTo(size.width * 0.8590898, size.height * 0.4361465);
    path_7.cubicTo(
        size.width * 0.8590898,
        size.height * 0.4656055,
        size.width * 0.8426953,
        size.height * 0.4922031,
        size.width * 0.8170859,
        size.height * 0.5067637);
    path_7.cubicTo(
        size.width * 0.8037402,
        size.height * 0.5143516,
        size.width * 0.7926445,
        size.height * 0.5254453,
        size.width * 0.7850566,
        size.height * 0.5387930);
    path_7.cubicTo(
        size.width * 0.7704961,
        size.height * 0.5644023,
        size.width * 0.7438984,
        size.height * 0.5807969,
        size.width * 0.7144395,
        size.height * 0.5807969);
    path_7.lineTo(size.width * 0.5410156, size.height * 0.5807969);
    path_7.lineTo(size.width * 0.5661211, size.height * 0.6210391);
    path_7.lineTo(size.width * 0.8504004, size.height * 0.6210391);
    path_7.cubicTo(
        size.width * 0.8526055,
        size.height * 0.6210391,
        size.width * 0.8544570,
        size.height * 0.6193223,
        size.width * 0.8545566,
        size.height * 0.6171191);
    path_7.cubicTo(
        size.width * 0.8565469,
        size.height * 0.5732363,
        size.width * 0.8917695,
        size.height * 0.5380137,
        size.width * 0.9356523,
        size.height * 0.5360254);
    path_7.cubicTo(
        size.width * 0.9378555,
        size.height * 0.5359258,
        size.width * 0.9395723,
        size.height * 0.5340742,
        size.width * 0.9395723,
        size.height * 0.5318691);
    path_7.lineTo(size.width * 0.9395723, size.height * 0.2870469);
    path_7.cubicTo(
        size.width * 0.9395723,
        size.height * 0.2848418,
        size.width * 0.9378555,
        size.height * 0.2829922,
        size.width * 0.9356523,
        size.height * 0.2828926);
    path_7.close();

    final Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffb3e59f).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    final Path path_8 = Path();
    path_8.moveTo(size.width * 0.2386602, size.height * 0.4354980);
    path_8.lineTo(size.width * 0.1548535, size.height * 0.4354980);
    path_8.cubicTo(
        size.width * 0.1463027,
        size.height * 0.4354980,
        size.width * 0.1393711,
        size.height * 0.4285664,
        size.width * 0.1393711,
        size.height * 0.4200156);
    path_8.lineTo(size.width * 0.1393711, size.height * 0.3988945);
    path_8.cubicTo(
        size.width * 0.1393711,
        size.height * 0.3903437,
        size.width * 0.1463027,
        size.height * 0.3834121,
        size.width * 0.1548535,
        size.height * 0.3834121);
    path_8.lineTo(size.width * 0.2386602, size.height * 0.3834121);
    path_8.cubicTo(
        size.width * 0.2472109,
        size.height * 0.3834121,
        size.width * 0.2541426,
        size.height * 0.3903438,
        size.width * 0.2541426,
        size.height * 0.3988945);
    path_8.lineTo(size.width * 0.2541426, size.height * 0.4200156);
    path_8.cubicTo(
        size.width * 0.2541426,
        size.height * 0.4285684,
        size.width * 0.2472109,
        size.height * 0.4354980,
        size.width * 0.2386602,
        size.height * 0.4354980);
    path_8.close();

    final Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    final Path path_9 = Path();
    path_9.moveTo(size.width * 0.7613398, size.height * 0.4354980);
    path_9.lineTo(size.width * 0.8451465, size.height * 0.4354980);
    path_9.cubicTo(
        size.width * 0.8536973,
        size.height * 0.4354980,
        size.width * 0.8606289,
        size.height * 0.4285664,
        size.width * 0.8606289,
        size.height * 0.4200156);
    path_9.lineTo(size.width * 0.8606289, size.height * 0.3988945);
    path_9.cubicTo(
        size.width * 0.8606289,
        size.height * 0.3903437,
        size.width * 0.8536973,
        size.height * 0.3834121,
        size.width * 0.8451465,
        size.height * 0.3834121);
    path_9.lineTo(size.width * 0.7613398, size.height * 0.3834121);
    path_9.cubicTo(
        size.width * 0.7527891,
        size.height * 0.3834121,
        size.width * 0.7458574,
        size.height * 0.3903438,
        size.width * 0.7458574,
        size.height * 0.3988945);
    path_9.lineTo(size.width * 0.7458574, size.height * 0.4200156);
    path_9.cubicTo(
        size.width * 0.7458574,
        size.height * 0.4285684,
        size.width * 0.7527891,
        size.height * 0.4354980,
        size.width * 0.7613398,
        size.height * 0.4354980);
    path_9.close();

    final Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    final Path path_10 = Path();
    path_10.moveTo(size.width * 0.4338789, size.height * 0.2623848);
    path_10.cubicTo(
        size.width * 0.3778164,
        size.height * 0.2876289,
        size.width * 0.3387871,
        size.height * 0.3439844,
        size.width * 0.3387871,
        size.height * 0.4094570);
    path_10.cubicTo(
        size.width * 0.3387871,
        size.height * 0.4749297,
        size.width * 0.3778164,
        size.height * 0.5312852,
        size.width * 0.4338789,
        size.height * 0.5565293);
    path_10.lineTo(size.width * 0.4635391, size.height * 0.3792148);
    path_10.close();

    final Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    final Path path_11 = Path();
    path_11.moveTo(size.width * 0.5661211, size.height * 0.2623848);
    path_11.lineTo(size.width * 0.5410156, size.height * 0.3604941);
    path_11.lineTo(size.width * 0.5661211, size.height * 0.5565273);
    path_11.cubicTo(
        size.width * 0.6221836,
        size.height * 0.5312832,
        size.width * 0.6612129,
        size.height * 0.4749277,
        size.width * 0.6612129,
        size.height * 0.4094551);
    path_11.cubicTo(
        size.width * 0.6612129,
        size.height * 0.3439844,
        size.width * 0.6221836,
        size.height * 0.2876289,
        size.width * 0.5661211,
        size.height * 0.2623848);
    path_11.close();

    final Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff95d6a4).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    final Path path_12 = Path();
    path_12.moveTo(size.width * 0.4358945, size.height * 0.7569219);
    path_12.lineTo(size.width * 0.05231445, size.height * 0.7569219);
    path_12.cubicTo(
        size.width * 0.04397852,
        size.height * 0.7569219,
        size.width * 0.03722461,
        size.height * 0.7501660,
        size.width * 0.03722461,
        size.height * 0.7418320);
    path_12.cubicTo(
        size.width * 0.03722461,
        size.height * 0.7334980,
        size.width * 0.04398047,
        size.height * 0.7267422,
        size.width * 0.05231445,
        size.height * 0.7267422);
    path_12.lineTo(size.width * 0.4358945, size.height * 0.7267422);
    path_12.cubicTo(
        size.width * 0.4442305,
        size.height * 0.7267422,
        size.width * 0.4509844,
        size.height * 0.7334980,
        size.width * 0.4509844,
        size.height * 0.7418320);
    path_12.cubicTo(
        size.width * 0.4509844,
        size.height * 0.7501660,
        size.width * 0.4442305,
        size.height * 0.7569219,
        size.width * 0.4358945,
        size.height * 0.7569219);
    path_12.close();

    final Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff66b394).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    final Path path_13 = Path();
    path_13.moveTo(size.width * 0.9476855, size.height * 0.7569219);
    path_13.lineTo(size.width * 0.5641055, size.height * 0.7569219);
    path_13.cubicTo(
        size.width * 0.5557695,
        size.height * 0.7569219,
        size.width * 0.5490156,
        size.height * 0.7501660,
        size.width * 0.5490156,
        size.height * 0.7418320);
    path_13.cubicTo(
        size.width * 0.5490156,
        size.height * 0.7334980,
        size.width * 0.5557715,
        size.height * 0.7267422,
        size.width * 0.5641055,
        size.height * 0.7267422);
    path_13.lineTo(size.width * 0.9476855, size.height * 0.7267422);
    path_13.cubicTo(
        size.width * 0.9560215,
        size.height * 0.7267422,
        size.width * 0.9627754,
        size.height * 0.7334980,
        size.width * 0.9627754,
        size.height * 0.7418320);
    path_13.cubicTo(
        size.width * 0.9627773,
        size.height * 0.7501660,
        size.width * 0.9560215,
        size.height * 0.7569219,
        size.width * 0.9476855,
        size.height * 0.7569219);
    path_13.close();

    final Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff66b394).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    final Path path_14 = Path();
    path_14.moveTo(size.width * 0.4358945, size.height * 0.8172832);
    path_14.lineTo(size.width * 0.05231445, size.height * 0.8172832);
    path_14.cubicTo(
        size.width * 0.04397852,
        size.height * 0.8172832,
        size.width * 0.03722461,
        size.height * 0.8105273,
        size.width * 0.03722461,
        size.height * 0.8021934);
    path_14.cubicTo(
        size.width * 0.03722461,
        size.height * 0.7938594,
        size.width * 0.04398047,
        size.height * 0.7871035,
        size.width * 0.05231445,
        size.height * 0.7871035);
    path_14.lineTo(size.width * 0.4358945, size.height * 0.7871035);
    path_14.cubicTo(
        size.width * 0.4442305,
        size.height * 0.7871035,
        size.width * 0.4509844,
        size.height * 0.7938594,
        size.width * 0.4509844,
        size.height * 0.8021934);
    path_14.cubicTo(
        size.width * 0.4509844,
        size.height * 0.8105273,
        size.width * 0.4442305,
        size.height * 0.8172832,
        size.width * 0.4358945,
        size.height * 0.8172832);
    path_14.close();

    final Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff66b394).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    final Path path_15 = Path();
    path_15.moveTo(size.width * 0.9476855, size.height * 0.8172832);
    path_15.lineTo(size.width * 0.5641055, size.height * 0.8172832);
    path_15.cubicTo(
        size.width * 0.5557695,
        size.height * 0.8172832,
        size.width * 0.5490156,
        size.height * 0.8105273,
        size.width * 0.5490156,
        size.height * 0.8021934);
    path_15.cubicTo(
        size.width * 0.5490156,
        size.height * 0.7938594,
        size.width * 0.5557715,
        size.height * 0.7871035,
        size.width * 0.5641055,
        size.height * 0.7871035);
    path_15.lineTo(size.width * 0.9476855, size.height * 0.7871035);
    path_15.cubicTo(
        size.width * 0.9560215,
        size.height * 0.7871035,
        size.width * 0.9627754,
        size.height * 0.7938594,
        size.width * 0.9627754,
        size.height * 0.8021934);
    path_15.cubicTo(
        size.width * 0.9627754,
        size.height * 0.8105273,
        size.width * 0.9560215,
        size.height * 0.8172832,
        size.width * 0.9476855,
        size.height * 0.8172832);
    path_15.close();

    final Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff66b394).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    final Path path_16 = Path();
    path_16.moveTo(size.width * 0.5661211, size.height * 0.6814629);
    path_16.lineTo(size.width * 0.5000000, size.height * 0.6255645);
    path_16.lineTo(size.width * 0.4338789, size.height * 0.6814629);
    path_16.lineTo(size.width * 0.4338789, size.height * 0.8745723);
    path_16.cubicTo(
        size.width * 0.4338789,
        size.height * 0.8772539,
        size.width * 0.4360527,
        size.height * 0.8794277,
        size.width * 0.4387344,
        size.height * 0.8794277);
    path_16.lineTo(size.width * 0.5612637, size.height * 0.8794277);
    path_16.cubicTo(
        size.width * 0.5639453,
        size.height * 0.8794277,
        size.width * 0.5661191,
        size.height * 0.8772539,
        size.width * 0.5661191,
        size.height * 0.8745723);
    path_16.lineTo(size.width * 0.5661191, size.height * 0.6814629);
    path_16.close();

    final Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xffffe07d).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    final Path path_17 = Path();
    path_17.moveTo(size.width * 0.5661211, size.height * 0.6814629);
    path_17.lineTo(size.width * 0.4338809, size.height * 0.6814629);
    path_17.lineTo(size.width * 0.4338809, size.height * 0.1254258);
    path_17.cubicTo(
        size.width * 0.4338809,
        size.height * 0.1227441,
        size.width * 0.4360547,
        size.height * 0.1205703,
        size.width * 0.4387363,
        size.height * 0.1205703);
    path_17.lineTo(size.width * 0.5612656, size.height * 0.1205703);
    path_17.cubicTo(
        size.width * 0.5639473,
        size.height * 0.1205703,
        size.width * 0.5661211,
        size.height * 0.1227441,
        size.width * 0.5661211,
        size.height * 0.1254258);
    path_17.close();

    final Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xfffff0af).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
