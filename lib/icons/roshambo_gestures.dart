//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class PaperMoveIcon extends CustomPainter {
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

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RockMoveIcon extends CustomPainter {
//Copy this CustomPainter code to the Bottom of the File
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

class ScrissorMoveIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.3437500, size.height * 0.6071429);
    path_0.cubicTo(
        size.width * 0.3437500,
        size.height * 0.6170051,
        size.width * 0.3577411,
        size.height * 0.6250000,
        size.width * 0.3750000,
        size.height * 0.6250000);
    path_0.lineTo(size.width * 0.4150000, size.height * 0.6250000);
    path_0.cubicTo(
        size.width * 0.4082038,
        size.height * 0.6135206,
        size.width * 0.4057538,
        size.height * 0.6013470,
        size.width * 0.4078125,
        size.height * 0.5892857);
    path_0.lineTo(size.width * 0.3750000, size.height * 0.5892857);
    path_0.cubicTo(
        size.width * 0.3577411,
        size.height * 0.5892857,
        size.width * 0.3437500,
        size.height * 0.5972806,
        size.width * 0.3437500,
        size.height * 0.6071429);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.5912500, size.height * 0.001250000);
    path_1.cubicTo(
        size.width * 0.5669241,
        size.height * -0.001713996,
        size.width * 0.5415339,
        size.height * 0.0009673941,
        size.width * 0.5206688,
        size.height * 0.008703909);
    path_1.cubicTo(
        size.width * 0.4998036,
        size.height * 0.01644042,
        size.width * 0.4851739,
        size.height * 0.02859787,
        size.width * 0.4800000,
        size.height * 0.04250000);
    path_1.lineTo(size.width * 0.3900000, size.height * 0.3703571);
    path_1.cubicTo(
        size.width * 0.3859568,
        size.height * 0.3828345,
        size.width * 0.3672363,
        size.height * 0.3920125,
        size.width * 0.3450402,
        size.height * 0.3923994);
    path_1.cubicTo(
        size.width * 0.3228440,
        size.height * 0.3927864,
        size.width * 0.3031792,
        size.height * 0.3842775,
        size.width * 0.2978125,
        size.height * 0.3719643);
    path_1.lineTo(size.width * 0.1875000, size.height * 0.08196429);
    path_1.cubicTo(
        size.width * 0.1825798,
        size.height * 0.06257541,
        size.width * 0.1595300,
        size.height * 0.04626773,
        size.width * 0.1273943,
        size.height * 0.03943961);
    path_1.cubicTo(
        size.width * 0.09525855,
        size.height * 0.03261149,
        size.width * 0.05916307,
        size.height * 0.03635214,
        size.width * 0.03327002,
        size.height * 0.04919389);
    path_1.cubicTo(
        size.width * 0.007376966,
        size.height * 0.06203565,
        size.width * -0.004183272,
        size.height * 0.08193004,
        size.width * 0.003125000,
        size.height * 0.1010714);
    path_1.lineTo(size.width * 0.1078125, size.height * 0.4285714);
    path_1.cubicTo(
        size.width * 0.1158879,
        size.height * 0.4535088,
        size.width * 0.1153571,
        size.height * 0.4791076,
        size.width * 0.1062500,
        size.height * 0.5039286);
    path_1.cubicTo(
        size.width * 0.1382069,
        size.height * 0.4859060,
        size.width * 0.1723546,
        size.height * 0.4691977,
        size.width * 0.2084375,
        size.height * 0.4539286);
    path_1.cubicTo(
        size.width * 0.2459777,
        size.height * 0.4375653,
        size.width * 0.2918477,
        size.height * 0.4286610,
        size.width * 0.3390625,
        size.height * 0.4285714);
    path_1.lineTo(size.width * 0.5478125, size.height * 0.4285714);
    path_1.lineTo(size.width * 0.6634375, size.height * 0.06500000);
    path_1.cubicTo(
        size.width * 0.6687174,
        size.height * 0.05107327,
        size.width * 0.6640698,
        size.height * 0.03651835,
        size.width * 0.6505227,
        size.height * 0.02455465);
    path_1.cubicTo(
        size.width * 0.6369755,
        size.height * 0.01259094,
        size.width * 0.6156453,
        size.height * 0.004204389,
        size.width * 0.5912500,
        size.height * 0.001250000);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.6340625, size.height * 0.6628571);
    path_2.cubicTo(
        size.width * 0.6177500,
        size.height * 0.6696083,
        size.width * 0.5992751,
        size.height * 0.6744621,
        size.width * 0.5796875,
        size.height * 0.6771429);
    path_2.cubicTo(
        size.width * 0.5839281,
        size.height * 0.6810357,
        size.width * 0.5876872,
        size.height * 0.6850932,
        size.width * 0.5909375,
        size.height * 0.6892857);
    path_2.cubicTo(
        size.width * 0.5951398,
        size.height * 0.6947875,
        size.width * 0.5942233,
        size.height * 0.7011277,
        size.width * 0.5884981,
        size.height * 0.7061609);
    path_2.cubicTo(
        size.width * 0.5827728,
        size.height * 0.7111941,
        size.width * 0.5730050,
        size.height * 0.7142467,
        size.width * 0.5625000,
        size.height * 0.7142857);
    path_2.cubicTo(
        size.width * 0.5501483,
        size.height * 0.7142397,
        size.width * 0.5390030,
        size.height * 0.7100405,
        size.width * 0.5340625,
        size.height * 0.7035714);
    path_2.cubicTo(
        size.width * 0.5141184,
        size.height * 0.6774579,
        size.width * 0.4689233,
        size.height * 0.6606151,
        size.width * 0.4190625,
        size.height * 0.6607143);
    path_2.lineTo(size.width * 0.3750000, size.height * 0.6607143);
    path_2.cubicTo(
        size.width * 0.3232233,
        size.height * 0.6607143,
        size.width * 0.2812500,
        size.height * 0.6367295,
        size.width * 0.2812500,
        size.height * 0.6071429);
    path_2.cubicTo(
        size.width * 0.2812500,
        size.height * 0.5775562,
        size.width * 0.3232233,
        size.height * 0.5535714,
        size.width * 0.3750000,
        size.height * 0.5535714);
    path_2.lineTo(size.width * 0.4687500, size.height * 0.5535714);
    path_2.cubicTo(
        size.width * 0.5377856,
        size.height * 0.5535714,
        size.width * 0.5937500,
        size.height * 0.5215918,
        size.width * 0.5937500,
        size.height * 0.4821429);
    path_2.lineTo(size.width * 0.5937500, size.height * 0.4642857);
    path_2.lineTo(size.width * 0.3390625, size.height * 0.4642857);
    path_2.cubicTo(
        size.width * 0.3052547,
        size.height * 0.4642857,
        size.width * 0.2723588,
        size.height * 0.4705516,
        size.width * 0.2453125,
        size.height * 0.4821429);
    path_2.cubicTo(size.width * 0.1228125, size.height * 0.5342857, 0,
        size.height * 0.6119643, 0, size.height * 0.7005357);
    path_2.cubicTo(
        size.width * -0.00009093563,
        size.height * 0.7404461,
        size.width * 0.02177265,
        size.height * 0.7793632,
        size.width * 0.06250000,
        size.height * 0.8117857);
    path_2.lineTo(size.width * 0.2187500, size.height * 0.9350000);
    path_2.cubicTo(
        size.width * 0.2424862,
        size.height * 0.9538199,
        size.width * 0.2535786,
        size.height * 0.9768921,
        size.width * 0.2500000,
        size.height * 1.000000);
    path_2.lineTo(size.width * 0.7812500, size.height * 1.000000);
    path_2.cubicTo(
        size.width * 0.7812500,
        size.height * 0.9514286,
        size.width * 0.7728125,
        size.height * 0.9642857,
        size.width * 0.9103125,
        size.height * 0.8305357);
    path_2.cubicTo(
        size.width * 0.9464750,
        size.height * 0.7887618,
        size.width * 0.9664093,
        size.height * 0.7430149,
        size.width * 0.9687500,
        size.height * 0.6964286);
    path_2.lineTo(size.width * 0.9687500, size.height * 0.6139286);
    path_2.lineTo(size.width * 0.8959375, size.height * 0.6801786);
    path_2.cubicTo(
        size.width * 0.8672277,
        size.height * 0.7084589,
        size.width * 0.8119018,
        size.height * 0.7243177,
        size.width * 0.7550661,
        size.height * 0.7205584);
    path_2.cubicTo(
        size.width * 0.6982304,
        size.height * 0.7167990,
        size.width * 0.6507074,
        size.height * 0.6941374,
        size.width * 0.6340625,
        size.height * 0.6628571);
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.4703125, size.height * 0.5892857);
    path_3.cubicTo(
        size.width * 0.4645837,
        size.height * 0.6042622,
        size.width * 0.4725914,
        size.height * 0.6198749,
        size.width * 0.4915614,
        size.height * 0.6307149);
    path_3.cubicTo(
        size.width * 0.5105314,
        size.height * 0.6415549,
        size.width * 0.5378537,
        size.height * 0.6461308,
        size.width * 0.5640625,
        size.height * 0.6428571);
    path_3.cubicTo(
        size.width * 0.6093750,
        size.height * 0.6371429,
        size.width * 0.6265625,
        size.height * 0.6169643,
        size.width * 0.6500000,
        size.height * 0.5941071);
    path_3.cubicTo(
        size.width * 0.7775000,
        size.height * 0.4776786,
        size.width * 0.7728125,
        size.height * 0.4823214,
        size.width * 0.7750000,
        size.height * 0.4787500);
    path_3.cubicTo(
        size.width * 0.8036966,
        size.height * 0.4557165,
        size.width * 0.7943277,
        size.height * 0.4237543,
        size.width * 0.7540625,
        size.height * 0.4073214);
    path_3.cubicTo(
        size.width * 0.7337882,
        size.height * 0.4008430,
        size.width * 0.7098180,
        size.height * 0.3992740,
        size.width * 0.6875052,
        size.height * 0.4029648);
    path_3.cubicTo(
        size.width * 0.6651924,
        size.height * 0.4066557,
        size.width * 0.6463955,
        size.height * 0.4152989,
        size.width * 0.6353125,
        size.height * 0.4269643);
    path_3.lineTo(size.width * 0.6268750, size.height * 0.4346429);
    path_3.cubicTo(
        size.width * 0.6448138,
        size.height * 0.4410468,
        size.width * 0.6558672,
        size.height * 0.4522010,
        size.width * 0.6562500,
        size.height * 0.4642857);
    path_3.lineTo(size.width * 0.6562500, size.height * 0.4821429);
    path_3.cubicTo(
        size.width * 0.6562536,
        size.height * 0.5409693,
        size.width * 0.5732552,
        size.height * 0.5887955,
        size.width * 0.4703125,
        size.height * 0.5892857);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.9625000, size.height * 0.4642857);
    path_4.cubicTo(
        size.width * 0.9219183,
        size.height * 0.4510751,
        size.width * 0.8702858,
        size.height * 0.4590493,
        size.width * 0.8468750,
        size.height * 0.4821429);
    path_4.cubicTo(
        size.width * 0.8287500,
        size.height * 0.4989286,
        size.width * 0.8593750,
        size.height * 0.4692857,
        size.width * 0.7034375,
        size.height * 0.6132143);
    path_4.cubicTo(
        size.width * 0.6911390,
        size.height * 0.6243022,
        size.width * 0.6870897,
        size.height * 0.6377356,
        size.width * 0.6921875,
        size.height * 0.6505357);
    path_4.cubicTo(
        size.width * 0.7003877,
        size.height * 0.6693494,
        size.width * 0.7281141,
        size.height * 0.6832972,
        size.width * 0.7618120,
        size.height * 0.6855602);
    path_4.cubicTo(
        size.width * 0.7955098,
        size.height * 0.6878233,
        size.width * 0.8281399,
        size.height * 0.6779289,
        size.width * 0.8437500,
        size.height * 0.6607143);
    path_4.lineTo(size.width * 0.9875000, size.height * 0.5301786);
    path_4.cubicTo(
        size.width * 1.012436,
        size.height * 0.5080376,
        size.width * 1.001244,
        size.height * 0.4785376,
        size.width * 0.9625000,
        size.height * 0.4642857);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
