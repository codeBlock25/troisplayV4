import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.9521951219512196).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class LeftKickMoveIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.3638049, size.height * 0.5035615);
    path_0.cubicTo(
        size.width * 0.3594341,
        size.height * 0.5035615,
        size.width * 0.3556107,
        size.height * 0.5001189,
        size.width * 0.3547522,
        size.height * 0.4952008);
    path_0.cubicTo(
        size.width * 0.3157278,
        size.height * 0.2560205,
        size.width * 0.2402537,
        size.height * 0.1098730,
        size.width * 0.2394732,
        size.height * 0.1084795);
    path_0.cubicTo(
        size.width * 0.2369756,
        size.height * 0.1036434,
        size.width * 0.2384585,
        size.height * 0.09741373,
        size.width * 0.2428293,
        size.height * 0.09462684);
    path_0.cubicTo(
        size.width * 0.2472000,
        size.height * 0.09183996,
        size.width * 0.2528195,
        size.height * 0.09347930,
        size.width * 0.2553951,
        size.height * 0.09831537);
    path_0.cubicTo(
        size.width * 0.2561756,
        size.height * 0.09979078,
        size.width * 0.3332098,
        size.height * 0.2486434,
        size.width * 0.3728585,
        size.height * 0.4915943);
    path_0.cubicTo(
        size.width * 0.3737171,
        size.height * 0.4970861,
        size.width * 0.3704390,
        size.height * 0.5023320,
        size.width * 0.3654439,
        size.height * 0.5033156);
    path_0.cubicTo(
        size.width * 0.3648976,
        size.height * 0.5035615,
        size.width * 0.3643512,
        size.height * 0.5035615,
        size.width * 0.3638049,
        size.height * 0.5035615);
    path_0.lineTo(size.width * 0.3638049, size.height * 0.5035615);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.4633171, size.height * 0.5035615);
    path_1.cubicTo(
        size.width * 0.4589463,
        size.height * 0.5035615,
        size.width * 0.4551220,
        size.height * 0.5001189,
        size.width * 0.4542634,
        size.height * 0.4952008);
    path_1.cubicTo(
        size.width * 0.4152390,
        size.height * 0.2560205,
        size.width * 0.3397659,
        size.height * 0.1098730,
        size.width * 0.3389854,
        size.height * 0.1084795);
    path_1.cubicTo(
        size.width * 0.3364878,
        size.height * 0.1036434,
        size.width * 0.3379707,
        size.height * 0.09741373,
        size.width * 0.3423415,
        size.height * 0.09462684);
    path_1.cubicTo(
        size.width * 0.3467122,
        size.height * 0.09183996,
        size.width * 0.3523317,
        size.height * 0.09347930,
        size.width * 0.3549073,
        size.height * 0.09831537);
    path_1.cubicTo(
        size.width * 0.3556878,
        size.height * 0.09979078,
        size.width * 0.4327220,
        size.height * 0.2486434,
        size.width * 0.4723707,
        size.height * 0.4915943);
    path_1.cubicTo(
        size.width * 0.4732293,
        size.height * 0.4970861,
        size.width * 0.4699512,
        size.height * 0.5023320,
        size.width * 0.4649561,
        size.height * 0.5033156);
    path_1.cubicTo(
        size.width * 0.4644098,
        size.height * 0.5035615,
        size.width * 0.4638634,
        size.height * 0.5035615,
        size.width * 0.4633171,
        size.height * 0.5035615);
    path_1.lineTo(size.width * 0.4633171, size.height * 0.5035615);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.5545376, size.height * 0.5035615);
    path_2.cubicTo(
        size.width * 0.5501668,
        size.height * 0.5035615,
        size.width * 0.5462634,
        size.height * 0.5001189,
        size.width * 0.5454829,
        size.height * 0.4952008);
    path_2.cubicTo(
        size.width * 0.5064585,
        size.height * 0.2560205,
        size.width * 0.4309854,
        size.height * 0.1098730,
        size.width * 0.4302049,
        size.height * 0.1084795);
    path_2.cubicTo(
        size.width * 0.4277073,
        size.height * 0.1036434,
        size.width * 0.4291902,
        size.height * 0.09741373,
        size.width * 0.4335610,
        size.height * 0.09462684);
    path_2.cubicTo(
        size.width * 0.4379317,
        size.height * 0.09183996,
        size.width * 0.4435512,
        size.height * 0.09347930,
        size.width * 0.4461268,
        size.height * 0.09831537);
    path_2.cubicTo(
        size.width * 0.4469073,
        size.height * 0.09979078,
        size.width * 0.5239415,
        size.height * 0.2486434,
        size.width * 0.5635122,
        size.height * 0.4915943);
    path_2.cubicTo(
        size.width * 0.5644488,
        size.height * 0.4970861,
        size.width * 0.5610927,
        size.height * 0.5023320,
        size.width * 0.5560976,
        size.height * 0.5033156);
    path_2.cubicTo(
        size.width * 0.5556293,
        size.height * 0.5035615,
        size.width * 0.5550059,
        size.height * 0.5035615,
        size.width * 0.5545376,
        size.height * 0.5035615);
    path_2.lineTo(size.width * 0.5545376, size.height * 0.5035615);
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.1766195, size.height * 0.5035594);
    path_3.cubicTo(
        size.width * 0.1760732,
        size.height * 0.5035594,
        size.width * 0.1755268,
        size.height * 0.5034775,
        size.width * 0.1749805,
        size.height * 0.5033955);
    path_3.cubicTo(
        size.width * 0.1699854,
        size.height * 0.5024119,
        size.width * 0.1666293,
        size.height * 0.4971660,
        size.width * 0.1675659,
        size.height * 0.4916742);
    path_3.cubicTo(
        size.width * 0.2072146,
        size.height * 0.2487234,
        size.width * 0.2842488,
        size.height * 0.09987090,
        size.width * 0.2850293,
        size.height * 0.09839549);
    path_3.cubicTo(
        size.width * 0.2875268,
        size.height * 0.09355943,
        size.width * 0.2931463,
        size.height * 0.09192008,
        size.width * 0.2975951,
        size.height * 0.09470697);
    path_3.cubicTo(
        size.width * 0.3019659,
        size.height * 0.09749385,
        size.width * 0.3034488,
        size.height * 0.1037234,
        size.width * 0.3009512,
        size.height * 0.1085594);
    path_3.cubicTo(
        size.width * 0.3001707,
        size.height * 0.1099529,
        size.width * 0.2246976,
        size.height * 0.2561004,
        size.width * 0.1856732,
        size.height * 0.4952807);
    path_3.cubicTo(
        size.width * 0.1848927,
        size.height * 0.5001168,
        size.width * 0.1809902,
        size.height * 0.5035594,
        size.width * 0.1766195,
        size.height * 0.5035594);
    path_3.lineTo(size.width * 0.1766195, size.height * 0.5035594);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.2686410, size.height * 0.5035645);
    path_4.cubicTo(
        size.width * 0.2680946,
        size.height * 0.5035645,
        size.width * 0.2675483,
        size.height * 0.5034836,
        size.width * 0.2670020,
        size.height * 0.5034016);
    path_4.cubicTo(
        size.width * 0.2620068,
        size.height * 0.5024180,
        size.width * 0.2587288,
        size.height * 0.4971721,
        size.width * 0.2595873,
        size.height * 0.4916803);
    path_4.cubicTo(
        size.width * 0.2992361,
        size.height * 0.2487295,
        size.width * 0.3762702,
        size.height * 0.09987654,
        size.width * 0.3770507,
        size.height * 0.09840113);
    path_4.cubicTo(
        size.width * 0.3776205,
        size.height * 0.09726609,
        size.width * 0.3784039,
        size.height * 0.09626486,
        size.width * 0.3793541,
        size.height * 0.09545881);
    path_4.cubicTo(
        size.width * 0.3803044,
        size.height * 0.09465287,
        size.width * 0.3814010,
        size.height * 0.09405902,
        size.width * 0.3825776,
        size.height * 0.09371373);
    path_4.cubicTo(
        size.width * 0.3837541,
        size.height * 0.09336844,
        size.width * 0.3849844,
        size.height * 0.09327889,
        size.width * 0.3861951,
        size.height * 0.09345061);
    path_4.cubicTo(
        size.width * 0.3874059,
        size.height * 0.09362244,
        size.width * 0.3885698,
        size.height * 0.09405184,
        size.width * 0.3896166,
        size.height * 0.09471260);
    path_4.cubicTo(
        size.width * 0.3939873,
        size.height * 0.09749949,
        size.width * 0.3955483,
        size.height * 0.1037285,
        size.width * 0.3929727,
        size.height * 0.1085645);
    path_4.cubicTo(
        size.width * 0.3921922,
        size.height * 0.1099580,
        size.width * 0.3167190,
        size.height * 0.2561066,
        size.width * 0.2776946,
        size.height * 0.4952869);
    path_4.cubicTo(
        size.width * 0.2768361,
        size.height * 0.5001230,
        size.width * 0.2729337,
        size.height * 0.5035645,
        size.width * 0.2686410,
        size.height * 0.5035645);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path();
    path_5.moveTo(size.width * 0.3672995, size.height * 0.5035645);
    path_5.cubicTo(
        size.width * 0.3667532,
        size.height * 0.5035645,
        size.width * 0.3662068,
        size.height * 0.5034836,
        size.width * 0.3656605,
        size.height * 0.5034016);
    path_5.cubicTo(
        size.width * 0.3606654,
        size.height * 0.5024180,
        size.width * 0.3573873,
        size.height * 0.4971721,
        size.width * 0.3582459,
        size.height * 0.4916803);
    path_5.cubicTo(
        size.width * 0.3978946,
        size.height * 0.2487295,
        size.width * 0.4749288,
        size.height * 0.09987654,
        size.width * 0.4757093,
        size.height * 0.09840113);
    path_5.cubicTo(
        size.width * 0.4762790,
        size.height * 0.09726609,
        size.width * 0.4770624,
        size.height * 0.09626486,
        size.width * 0.4780127,
        size.height * 0.09545881);
    path_5.cubicTo(
        size.width * 0.4789629,
        size.height * 0.09465287,
        size.width * 0.4800595,
        size.height * 0.09405902,
        size.width * 0.4812361,
        size.height * 0.09371373);
    path_5.cubicTo(
        size.width * 0.4824127,
        size.height * 0.09336844,
        size.width * 0.4836429,
        size.height * 0.09327889,
        size.width * 0.4848537,
        size.height * 0.09345061);
    path_5.cubicTo(
        size.width * 0.4860644,
        size.height * 0.09362244,
        size.width * 0.4872283,
        size.height * 0.09405184,
        size.width * 0.4882751,
        size.height * 0.09471260);
    path_5.cubicTo(
        size.width * 0.4926459,
        size.height * 0.09749949,
        size.width * 0.4942068,
        size.height * 0.1037285,
        size.width * 0.4916312,
        size.height * 0.1085645);
    path_5.cubicTo(
        size.width * 0.4908507,
        size.height * 0.1099580,
        size.width * 0.4153776,
        size.height * 0.2561066,
        size.width * 0.3763532,
        size.height * 0.4952869);
    path_5.cubicTo(
        size.width * 0.3755727,
        size.height * 0.5001230,
        size.width * 0.3716702,
        size.height * 0.5035645,
        size.width * 0.3672995,
        size.height * 0.5035645);
    path_5.close();

    final Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    final Path path_6 = Path();
    path_6.moveTo(size.width * 0.4633873, size.height * 0.5035594);
    path_6.cubicTo(
        size.width * 0.4628410,
        size.height * 0.5035594,
        size.width * 0.4622946,
        size.height * 0.5034775,
        size.width * 0.4617483,
        size.height * 0.5033955);
    path_6.cubicTo(
        size.width * 0.4567532,
        size.height * 0.5024119,
        size.width * 0.4533971,
        size.height * 0.4971660,
        size.width * 0.4543337,
        size.height * 0.4916742);
    path_6.cubicTo(
        size.width * 0.4939824,
        size.height * 0.2488053,
        size.width * 0.5672702,
        size.height * 0.1000352,
        size.width * 0.5680507,
        size.height * 0.09855984);
    path_6.cubicTo(
        size.width * 0.5704702,
        size.height * 0.09364180,
        size.width * 0.5760898,
        size.height * 0.09183852,
        size.width * 0.5805385,
        size.height * 0.09454344);
    path_6.cubicTo(
        size.width * 0.5849873,
        size.height * 0.09724836,
        size.width * 0.5866263,
        size.height * 0.1033955,
        size.width * 0.5842068,
        size.height * 0.1083135);
    path_6.cubicTo(
        size.width * 0.5835044,
        size.height * 0.1097889,
        size.width * 0.5115434,
        size.height * 0.2559365,
        size.width * 0.4725190,
        size.height * 0.4952807);
    path_6.cubicTo(
        size.width * 0.4715824,
        size.height * 0.5001168,
        size.width * 0.4676800,
        size.height * 0.5035594,
        size.width * 0.4633873,
        size.height * 0.5035594);
    path_6.lineTo(size.width * 0.4633873, size.height * 0.5035594);
    path_6.close();

    final Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    final Path path_7 = Path();
    path_7.moveTo(size.width * 0.5545463, size.height * 0.5035594);
    path_7.cubicTo(
        size.width * 0.5540000,
        size.height * 0.5035594,
        size.width * 0.5534537,
        size.height * 0.5034775,
        size.width * 0.5529073,
        size.height * 0.5033955);
    path_7.cubicTo(
        size.width * 0.5479122,
        size.height * 0.5024119,
        size.width * 0.5445561,
        size.height * 0.4971660,
        size.width * 0.5454927,
        size.height * 0.4916742);
    path_7.cubicTo(
        size.width * 0.5851415,
        size.height * 0.2487234,
        size.width * 0.6621756,
        size.height * 0.09987090,
        size.width * 0.6629561,
        size.height * 0.09839549);
    path_7.cubicTo(
        size.width * 0.6655317,
        size.height * 0.09355943,
        size.width * 0.6711512,
        size.height * 0.09192008,
        size.width * 0.6755220,
        size.height * 0.09470697);
    path_7.cubicTo(
        size.width * 0.6798927,
        size.height * 0.09749385,
        size.width * 0.6813756,
        size.height * 0.1037234,
        size.width * 0.6788780,
        size.height * 0.1085594);
    path_7.cubicTo(
        size.width * 0.6780976,
        size.height * 0.1099529,
        size.width * 0.6026244,
        size.height * 0.2561004,
        size.width * 0.5636000,
        size.height * 0.4952807);
    path_7.cubicTo(
        size.width * 0.5627415,
        size.height * 0.5001168,
        size.width * 0.5588390,
        size.height * 0.5035594,
        size.width * 0.5545463,
        size.height * 0.5035594);
    path_7.lineTo(size.width * 0.5545463, size.height * 0.5035594);
    path_7.close();

    final Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    final Path path_8 = Path();
    path_8.moveTo(size.width * 0.6492107, size.height * 0.5035594);
    path_8.cubicTo(
        size.width * 0.6486644,
        size.height * 0.5035594,
        size.width * 0.6481180,
        size.height * 0.5034775,
        size.width * 0.6475717,
        size.height * 0.5033955);
    path_8.cubicTo(
        size.width * 0.6425766,
        size.height * 0.5024119,
        size.width * 0.6392205,
        size.height * 0.4971660,
        size.width * 0.6401571,
        size.height * 0.4916742);
    path_8.cubicTo(
        size.width * 0.6798059,
        size.height * 0.2487234,
        size.width * 0.7568400,
        size.height * 0.09987090,
        size.width * 0.7576205,
        size.height * 0.09839549);
    path_8.cubicTo(
        size.width * 0.7601961,
        size.height * 0.09355943,
        size.width * 0.7657376,
        size.height * 0.09192008,
        size.width * 0.7701863,
        size.height * 0.09470697);
    path_8.cubicTo(
        size.width * 0.7745571,
        size.height * 0.09749385,
        size.width * 0.7760400,
        size.height * 0.1037234,
        size.width * 0.7735424,
        size.height * 0.1085594);
    path_8.cubicTo(
        size.width * 0.7727620,
        size.height * 0.1099529,
        size.width * 0.6972888,
        size.height * 0.2561004,
        size.width * 0.6582644,
        size.height * 0.4952807);
    path_8.cubicTo(
        size.width * 0.6574059,
        size.height * 0.5001168,
        size.width * 0.6535034,
        size.height * 0.5035594,
        size.width * 0.6492107,
        size.height * 0.5035594);
    path_8.lineTo(size.width * 0.6492107, size.height * 0.5035594);
    path_8.close();

    final Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    final Path path_9 = Path();
    path_9.moveTo(size.width * 0.7438751, size.height * 0.5035686);
    path_9.cubicTo(
        size.width * 0.7433288,
        size.height * 0.5035686,
        size.width * 0.7427824,
        size.height * 0.5034867,
        size.width * 0.7422361,
        size.height * 0.5034047);
    path_9.cubicTo(
        size.width * 0.7372410,
        size.height * 0.5024211,
        size.width * 0.7338849,
        size.height * 0.4971752,
        size.width * 0.7348215,
        size.height * 0.4916834);
    path_9.cubicTo(
        size.width * 0.7620605,
        size.height * 0.3247162,
        size.width * 0.8067824,
        size.height * 0.2027490,
        size.width * 0.8310556,
        size.height * 0.1449621);
    path_9.cubicTo(
        size.width * 0.8332410,
        size.height * 0.1398801,
        size.width * 0.8386263,
        size.height * 0.1376670,
        size.width * 0.8432312,
        size.height * 0.1400441);
    path_9.cubicTo(
        size.width * 0.8478361,
        size.height * 0.1424211,
        size.width * 0.8498654,
        size.height * 0.1484047,
        size.width * 0.8477580,
        size.height * 0.1534867);
    path_9.cubicTo(
        size.width * 0.8238751,
        size.height * 0.2104539,
        size.width * 0.7797776,
        size.height * 0.3305359,
        size.width * 0.7529288,
        size.height * 0.4952900);
    path_9.cubicTo(
        size.width * 0.7520702,
        size.height * 0.5001260,
        size.width * 0.7482459,
        size.height * 0.5035686,
        size.width * 0.7438751,
        size.height * 0.5035686);
    path_9.lineTo(size.width * 0.7438751, size.height * 0.5035686);
    path_9.close();

    final Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    final Path path_10 = Path();
    path_10.moveTo(size.width * 0.6491405, size.height * 0.5035615);
    path_10.cubicTo(
        size.width * 0.6447698,
        size.height * 0.5035615,
        size.width * 0.6408673,
        size.height * 0.5001189,
        size.width * 0.6400868,
        size.height * 0.4952008);
    path_10.cubicTo(
        size.width * 0.6010624,
        size.height * 0.2560205,
        size.width * 0.5255893,
        size.height * 0.1098730,
        size.width * 0.5248088,
        size.height * 0.1084795);
    path_10.cubicTo(
        size.width * 0.5223112,
        size.height * 0.1036434,
        size.width * 0.5237941,
        size.height * 0.09741373,
        size.width * 0.5281649,
        size.height * 0.09462684);
    path_10.cubicTo(
        size.width * 0.5325356,
        size.height * 0.09183996,
        size.width * 0.5381551,
        size.height * 0.09347930,
        size.width * 0.5407307,
        size.height * 0.09831537);
    path_10.cubicTo(
        size.width * 0.5415112,
        size.height * 0.09979078,
        size.width * 0.6185454,
        size.height * 0.2486434,
        size.width * 0.6581941,
        size.height * 0.4915943);
    path_10.cubicTo(
        size.width * 0.6591307,
        size.height * 0.4970861,
        size.width * 0.6557746,
        size.height * 0.5023320,
        size.width * 0.6507795,
        size.height * 0.5033156);
    path_10.cubicTo(
        size.width * 0.6502332,
        size.height * 0.5035615,
        size.width * 0.6496868,
        size.height * 0.5035615,
        size.width * 0.6491405,
        size.height * 0.5035615);
    path_10.lineTo(size.width * 0.6491405, size.height * 0.5035615);
    path_10.close();

    final Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    final Path path_11 = Path();
    path_11.moveTo(size.width * 0.7438966, size.height * 0.5035615);
    path_11.cubicTo(
        size.width * 0.7395259,
        size.height * 0.5035615,
        size.width * 0.7356234,
        size.height * 0.5001189,
        size.width * 0.7348429,
        size.height * 0.4952008);
    path_11.cubicTo(
        size.width * 0.6958185,
        size.height * 0.2560205,
        size.width * 0.6203454,
        size.height * 0.1098730,
        size.width * 0.6195649,
        size.height * 0.1084795);
    path_11.cubicTo(
        size.width * 0.6170673,
        size.height * 0.1036434,
        size.width * 0.6185502,
        size.height * 0.09741373,
        size.width * 0.6229210,
        size.height * 0.09462684);
    path_11.cubicTo(
        size.width * 0.6272917,
        size.height * 0.09183996,
        size.width * 0.6329112,
        size.height * 0.09347930,
        size.width * 0.6354868,
        size.height * 0.09831537);
    path_11.cubicTo(
        size.width * 0.6362673,
        size.height * 0.09979078,
        size.width * 0.7133015,
        size.height * 0.2486434,
        size.width * 0.7529502,
        size.height * 0.4915943);
    path_11.cubicTo(
        size.width * 0.7538868,
        size.height * 0.4970861,
        size.width * 0.7505307,
        size.height * 0.5023320,
        size.width * 0.7455356,
        size.height * 0.5033156);
    path_11.cubicTo(
        size.width * 0.7449893,
        size.height * 0.5035615,
        size.width * 0.7444429,
        size.height * 0.5035615,
        size.width * 0.7438966,
        size.height * 0.5035615);
    path_11.lineTo(size.width * 0.7438966, size.height * 0.5035615);
    path_11.close();

    final Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    final Path path_12 = Path();
    path_12.moveTo(size.width * 0.8352732, size.height * 0.5035615);
    path_12.cubicTo(
        size.width * 0.8309024,
        size.height * 0.5035615,
        size.width * 0.8270000,
        size.height * 0.5001189,
        size.width * 0.8262195,
        size.height * 0.4952008);
    path_12.cubicTo(
        size.width * 0.7871951,
        size.height * 0.2560205,
        size.width * 0.7117220,
        size.height * 0.1098730,
        size.width * 0.7109415,
        size.height * 0.1084795);
    path_12.cubicTo(
        size.width * 0.7083659,
        size.height * 0.1036434,
        size.width * 0.7099268,
        size.height * 0.09741373,
        size.width * 0.7142976,
        size.height * 0.09462684);
    path_12.cubicTo(
        size.width * 0.7186683,
        size.height * 0.09183996,
        size.width * 0.7242878,
        size.height * 0.09347930,
        size.width * 0.7268634,
        size.height * 0.09831537);
    path_12.cubicTo(
        size.width * 0.7276439,
        size.height * 0.09979078,
        size.width * 0.8046780,
        size.height * 0.2486434,
        size.width * 0.8443268,
        size.height * 0.4915943);
    path_12.cubicTo(
        size.width * 0.8452634,
        size.height * 0.4970861,
        size.width * 0.8419073,
        size.height * 0.5023320,
        size.width * 0.8369122,
        size.height * 0.5033156);
    path_12.cubicTo(
        size.width * 0.8363659,
        size.height * 0.5035615,
        size.width * 0.8358195,
        size.height * 0.5035615,
        size.width * 0.8352732,
        size.height * 0.5035615);
    path_12.lineTo(size.width * 0.8352732, size.height * 0.5035615);
    path_12.close();

    final Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    final Path path_13 = Path();
    path_13.moveTo(size.width * 0.2685610, size.height * 0.5035615);
    path_13.cubicTo(
        size.width * 0.2641902,
        size.height * 0.5035615,
        size.width * 0.2603659,
        size.height * 0.5001189,
        size.width * 0.2595073,
        size.height * 0.4952008);
    path_13.cubicTo(
        size.width * 0.2204829,
        size.height * 0.2560205,
        size.width * 0.1450098,
        size.height * 0.1098730,
        size.width * 0.1442293,
        size.height * 0.1084795);
    path_13.cubicTo(
        size.width * 0.1417317,
        size.height * 0.1036434,
        size.width * 0.1432146,
        size.height * 0.09741373,
        size.width * 0.1475854,
        size.height * 0.09462684);
    path_13.cubicTo(
        size.width * 0.1519561,
        size.height * 0.09183996,
        size.width * 0.1575756,
        size.height * 0.09347930,
        size.width * 0.1601512,
        size.height * 0.09831537);
    path_13.cubicTo(
        size.width * 0.1609317,
        size.height * 0.09979078,
        size.width * 0.2379659,
        size.height * 0.2486434,
        size.width * 0.2776146,
        size.height * 0.4915943);
    path_13.cubicTo(
        size.width * 0.2784732,
        size.height * 0.4970861,
        size.width * 0.2751951,
        size.height * 0.5023320,
        size.width * 0.2702000,
        size.height * 0.5033156);
    path_13.cubicTo(
        size.width * 0.2696537,
        size.height * 0.5035615,
        size.width * 0.2691073,
        size.height * 0.5035615,
        size.width * 0.2685610,
        size.height * 0.5035615);
    path_13.lineTo(size.width * 0.2685610, size.height * 0.5035615);
    path_13.close();

    final Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    final Path path_14 = Path();
    path_14.moveTo(size.width * 0.1766322, size.height * 0.5153617);
    path_14.cubicTo(
        size.width * 0.1722615,
        size.height * 0.5153617,
        size.width * 0.1684371,
        size.height * 0.5119191,
        size.width * 0.1675785,
        size.height * 0.5070010);
    path_14.cubicTo(
        size.width * 0.1516566,
        size.height * 0.4095420,
        size.width * 0.1281639,
        size.height * 0.3163453,
        size.width * 0.09764683,
        size.height * 0.2300338);
    path_14.cubicTo(
        size.width * 0.09585161,
        size.height * 0.2248699,
        size.width * 0.09819317,
        size.height * 0.2189682,
        size.width * 0.1028761,
        size.height * 0.2169191);
    path_14.cubicTo(
        size.width * 0.1076371,
        size.height * 0.2148699,
        size.width * 0.1129444,
        size.height * 0.2174928,
        size.width * 0.1147395,
        size.height * 0.2226568);
    path_14.cubicTo(
        size.width * 0.1456468,
        size.height * 0.3101977,
        size.width * 0.1694517,
        size.height * 0.4046240,
        size.width * 0.1856078,
        size.height * 0.5033945);
    path_14.cubicTo(
        size.width * 0.1865444,
        size.height * 0.5088863,
        size.width * 0.1831883,
        size.height * 0.5141322,
        size.width * 0.1781932,
        size.height * 0.5151158);
    path_14.cubicTo(
        size.width * 0.1777249,
        size.height * 0.5152797,
        size.width * 0.1771785,
        size.height * 0.5153617,
        size.width * 0.1766322,
        size.height * 0.5153617);
    path_14.lineTo(size.width * 0.1766322, size.height * 0.5153617);
    path_14.close();

    final Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    final Path path_15 = Path();
    path_15.moveTo(size.width * 0.8353483, size.height * 0.5153699);
    path_15.cubicTo(
        size.width * 0.8348020,
        size.height * 0.5153699,
        size.width * 0.8342556,
        size.height * 0.5152879,
        size.width * 0.8337093,
        size.height * 0.5152059);
    path_15.cubicTo(
        size.width * 0.8287141,
        size.height * 0.5142223,
        size.width * 0.8254361,
        size.height * 0.5089764,
        size.width * 0.8262946,
        size.height * 0.5034846);
    path_15.cubicTo(
        size.width * 0.8424507,
        size.height * 0.4047141,
        size.width * 0.8662556,
        size.height * 0.3102879,
        size.width * 0.8971629,
        size.height * 0.2227469);
    path_15.cubicTo(
        size.width * 0.8990361,
        size.height * 0.2175010,
        size.width * 0.9043434,
        size.height * 0.2149600,
        size.width * 0.9090263,
        size.height * 0.2170092);
    path_15.cubicTo(
        size.width * 0.9137873,
        size.height * 0.2190584,
        size.width * 0.9161288,
        size.height * 0.2248781,
        size.width * 0.9142556,
        size.height * 0.2301240);
    path_15.cubicTo(
        size.width * 0.8838166,
        size.height * 0.3164355,
        size.width * 0.8602459,
        size.height * 0.4096322,
        size.width * 0.8444020,
        size.height * 0.5070912);
    path_15.cubicTo(
        size.width * 0.8435434,
        size.height * 0.5119273,
        size.width * 0.8397190,
        size.height * 0.5153699,
        size.width * 0.8353483,
        size.height * 0.5153699);
    path_15.close();

    final Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    final Path path_16 = Path();
    path_16.moveTo(size.width * 0.7569229, size.height * 0.5219252);
    path_16.cubicTo(
        size.width * 0.7442790,
        size.height * 0.5213514,
        size.width * 0.7344449,
        size.height * 0.5096301,
        size.width * 0.7349912,
        size.height * 0.4956957);
    path_16.cubicTo(
        size.width * 0.7456839,
        size.height * 0.2188105,
        size.width * 0.8370010,
        size.height * 0.06569539,
        size.width * 0.8409034,
        size.height * 0.05930195);
    path_16.cubicTo(
        size.width * 0.8480059,
        size.height * 0.04766260,
        size.width * 0.8622888,
        size.height * 0.04454785,
        size.width * 0.8727473,
        size.height * 0.05225277);
    path_16.cubicTo(
        size.width * 0.8832839,
        size.height * 0.05995768,
        size.width * 0.8860937,
        size.height * 0.07569539,
        size.width * 0.8789912,
        size.height * 0.08733473);
    path_16.cubicTo(
        size.width * 0.8781327,
        size.height * 0.08881014,
        size.width * 0.7909522,
        size.height * 0.2361055,
        size.width * 0.7808059,
        size.height * 0.4976629);
    path_16.cubicTo(
        size.width * 0.7803376,
        size.height * 0.5115973,
        size.width * 0.7695668,
        size.height * 0.5224990,
        size.width * 0.7569229,
        size.height * 0.5219252);
    path_16.close();

    final Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    final Path path_17 = Path();
    path_17.moveTo(size.width * 0.2558566, size.height * 0.5219273);
    path_17.cubicTo(
        size.width * 0.2685005,
        size.height * 0.5213535,
        size.width * 0.2783346,
        size.height * 0.5096322,
        size.width * 0.2777883,
        size.height * 0.4956977);
    path_17.cubicTo(
        size.width * 0.2670956,
        size.height * 0.2188125,
        size.width * 0.1757785,
        size.height * 0.06561527,
        size.width * 0.1718761,
        size.height * 0.05922182);
    path_17.cubicTo(
        size.width * 0.1647737,
        size.height * 0.04758248,
        size.width * 0.1504907,
        size.height * 0.04446783,
        size.width * 0.1399541,
        size.height * 0.05217275);
    path_17.cubicTo(
        size.width * 0.1294176,
        size.height * 0.05987766,
        size.width * 0.1266078,
        size.height * 0.07561537,
        size.width * 0.1337102,
        size.height * 0.08725471);
    path_17.cubicTo(
        size.width * 0.1345688,
        size.height * 0.08873012,
        size.width * 0.2217493,
        size.height * 0.2360256,
        size.width * 0.2318956,
        size.height * 0.4975830);
    path_17.cubicTo(
        size.width * 0.2324420,
        size.height * 0.5115994,
        size.width * 0.2431346,
        size.height * 0.5225010,
        size.width * 0.2558566,
        size.height * 0.5219273);
    path_17.close();

    final Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    final Path path_18 = Path();
    path_18.moveTo(size.width * 0.9376771, size.height * 0.5729098);
    path_18.cubicTo(
        size.width * 0.9360380,
        size.height * 0.5729098,
        size.width * 0.9343990,
        size.height * 0.5727459,
        size.width * 0.9326820,
        size.height * 0.5723361);
    path_18.cubicTo(
        size.width * 0.5271405,
        size.height * 0.4780738,
        size.width * 0.07188156,
        size.height * 0.5715164,
        size.width * 0.06727668,
        size.height * 0.5724180);
    path_18.cubicTo(
        size.width * 0.05486693,
        size.height * 0.5750410,
        size.width * 0.04276937,
        size.height * 0.5665984,
        size.width * 0.04027180,
        size.height * 0.5534836);
    path_18.cubicTo(
        size.width * 0.03777424,
        size.height * 0.5403689,
        size.width * 0.04581327,
        size.height * 0.5277459,
        size.width * 0.05830107,
        size.height * 0.5251230);
    path_18.cubicTo(
        size.width * 0.06290595,
        size.height * 0.5241393,
        size.width * 0.5277649,
        size.height * 0.4287295,
        size.width * 0.9425941,
        size.height * 0.5252049);
    path_18.cubicTo(
        size.width * 0.9550039,
        size.height * 0.5280738,
        size.width * 0.9628088,
        size.height * 0.5409426,
        size.width * 0.9599990,
        size.height * 0.5539754);
    path_18.cubicTo(
        size.width * 0.9589024,
        size.height * 0.5593371,
        size.width * 0.9560878,
        size.height * 0.5641414,
        size.width * 0.9520254,
        size.height * 0.5675871);
    path_18.cubicTo(
        size.width * 0.9479629,
        size.height * 0.5710328,
        size.width * 0.9428985,
        size.height * 0.5729119,
        size.width * 0.9376771,
        size.height * 0.5729098);
    path_18.lineTo(size.width * 0.9376771, size.height * 0.5729098);
    path_18.close();

    final Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    final Path path_19 = Path();
    path_19.moveTo(size.width * 0.9503288, size.height * 0.6265963);
    path_19.cubicTo(
        size.width * 0.9148946,
        size.height * 0.6268422,
        size.width * 0.9148946,
        size.height * 0.6206127,
        size.width * 0.9052946,
        size.height * 0.5874160);
    path_19.lineTo(size.width * 0.8232654, size.height * 0.1383996);
    path_19.lineTo(size.width * 0.8232654, size.height * 0.1338094);
    path_19.cubicTo(
        size.width * 0.8232654,
        size.height * 0.1168422,
        size.width * 0.7968068,
        size.height * 0.09675973,
        size.width * 0.7744849,
        size.height * 0.09675973);
    path_19.lineTo(size.width * 0.2259580, size.height * 0.09675973);
    path_19.cubicTo(
        size.width * 0.2036361,
        size.height * 0.09675973,
        size.width * 0.1771776,
        size.height * 0.1168422,
        size.width * 0.1771776,
        size.height * 0.1338094);
    path_19.lineTo(size.width * 0.1771776, size.height * 0.1383996);
    path_19.lineTo(size.width * 0.09522585, size.height * 0.5874980);
    path_19.cubicTo(
        size.width * 0.08960634,
        size.height * 0.6287275,
        size.width * 0.08960634,
        size.height * 0.6287275,
        size.width * 0.04145024,
        size.height * 0.6257766);
    path_19.cubicTo(
        size.width * 0.01616244,
        size.height * 0.6242193,
        size.width * -0.01146683,
        size.height * 0.6266783,
        size.width * 0.005001473,
        size.height * 0.5693012);
    path_19.lineTo(size.width * 0.08546976, size.height * 0.1287275);
    path_19.cubicTo(
        size.width * 0.1102898,
        size.height * 0.0004482736,
        size.width * 0.1609434,
        size.height * 0.0004482582,
        size.width * 0.2260361,
        size.height * 0.0004482582);
    path_19.lineTo(size.width * 0.7745629, size.height * 0.0004482582);
    path_19.cubicTo(
        size.width * 0.8396556,
        size.height * 0.0004482582,
        size.width * 0.8876556,
        size.height * 0.0004482736,
        size.width * 0.9151288,
        size.height * 0.1287275);
    path_19.lineTo(size.width * 0.9956000, size.height * 0.5693012);
    path_19.cubicTo(
        size.width * 1.005980,
        size.height * 0.6269242,
        size.width * 0.9932585,
        size.height * 0.6278258,
        size.width * 0.9591483,
        size.height * 0.6269242);
    path_19.cubicTo(
        size.width * 0.9560263,
        size.height * 0.6268422,
        size.width * 0.9532166,
        size.height * 0.6265963,
        size.width * 0.9503288,
        size.height * 0.6265963);
    path_19.lineTo(size.width * 0.9503288, size.height * 0.6265963);
    path_19.close();

    final Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    final Path path_20 = Path();
    path_20.moveTo(size.width * 0.6809746, size.height * 0.7336137);
    path_20.cubicTo(
        size.width * 0.6791844,
        size.height * 0.7301773,
        size.width * 0.6765941,
        size.height * 0.7270451,
        size.width * 0.6734829,
        size.height * 0.7245523);
    path_20.cubicTo(
        size.width * 0.6703707,
        size.height * 0.7220594,
        size.width * 0.6668556,
        size.height * 0.7203002,
        size.width * 0.6633141,
        size.height * 0.7194641);
    path_20.lineTo(size.width * 0.3562185, size.height * 0.6475738);
    path_20.cubicTo(
        size.width * 0.3530800,
        size.height * 0.6468402,
        size.width * 0.3500224,
        size.height * 0.6468576,
        size.width * 0.3473063,
        size.height * 0.6476260);
    path_20.cubicTo(
        size.width * 0.3445902,
        size.height * 0.6483934,
        size.width * 0.3422976,
        size.height * 0.6498883,
        size.width * 0.3406244,
        size.height * 0.6519826);
    path_20.cubicTo(
        size.width * 0.3389512,
        size.height * 0.6540758,
        size.width * 0.3379473,
        size.height * 0.6567070,
        size.width * 0.3376995,
        size.height * 0.6596496);
    path_20.cubicTo(
        size.width * 0.3374507,
        size.height * 0.6625912,
        size.width * 0.3379659,
        size.height * 0.6657572,
        size.width * 0.3391980,
        size.height * 0.6688760);
    path_20.lineTo(size.width * 0.4599385, size.height * 0.9740061);
    path_20.cubicTo(
        size.width * 0.4613327,
        size.height * 0.9775266,
        size.width * 0.4635922,
        size.height * 0.9808596,
        size.width * 0.4664722,
        size.height * 0.9836455);
    path_20.cubicTo(
        size.width * 0.4693532,
        size.height * 0.9864303,
        size.width * 0.4727454,
        size.height * 0.9885615,
        size.width * 0.4762810,
        size.height * 0.9898084);
    path_20.cubicTo(
        size.width * 0.4798166,
        size.height * 0.9910543,
        size.width * 0.4833610,
        size.height * 0.9913689,
        size.width * 0.4865317,
        size.height * 0.9907162);
    path_20.cubicTo(
        size.width * 0.4897024,
        size.height * 0.9900635,
        size.width * 0.4923766,
        size.height * 0.9884693,
        size.width * 0.4942663,
        size.height * 0.9861066);
    path_20.lineTo(size.width * 0.6806215, size.height * 0.7528668);
    path_20.cubicTo(
        size.width * 0.6825122,
        size.height * 0.7505020,
        size.width * 0.6835444,
        size.height * 0.7474580,
        size.width * 0.6836068,
        size.height * 0.7440635);
    path_20.cubicTo(
        size.width * 0.6836693,
        size.height * 0.7406701,
        size.width * 0.6827590,
        size.height * 0.7370564,
        size.width * 0.6809746,
        size.height * 0.7336137);
    path_20.close();

    final Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.928780487804878).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RightKickMove extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.3637746, size.height * 0.5157962);
    path_0.cubicTo(
        size.width * 0.3594039,
        size.height * 0.5157962,
        size.width * 0.3555795,
        size.height * 0.5122668,
        size.width * 0.3547210,
        size.height * 0.5072248);
    path_0.cubicTo(
        size.width * 0.3156966,
        size.height * 0.2620147,
        size.width * 0.2402234,
        size.height * 0.1121828,
        size.width * 0.2394429,
        size.height * 0.1107542);
    path_0.cubicTo(
        size.width * 0.2369454,
        size.height * 0.1057962,
        size.width * 0.2384283,
        size.height * 0.09940998,
        size.width * 0.2427990,
        size.height * 0.09655284);
    path_0.cubicTo(
        size.width * 0.2471698,
        size.height * 0.09369569,
        size.width * 0.2527893,
        size.height * 0.09537637,
        size.width * 0.2553649,
        size.height * 0.1003343);
    path_0.cubicTo(
        size.width * 0.2561454,
        size.height * 0.1018470,
        size.width * 0.3331795,
        size.height * 0.2544517,
        size.width * 0.3728283,
        size.height * 0.5035273);
    path_0.cubicTo(
        size.width * 0.3736868,
        size.height * 0.5091576,
        size.width * 0.3704088,
        size.height * 0.5145357,
        size.width * 0.3654137,
        size.height * 0.5155441);
    path_0.cubicTo(
        size.width * 0.3648673,
        size.height * 0.5157962,
        size.width * 0.3643210,
        size.height * 0.5157962,
        size.width * 0.3637746,
        size.height * 0.5157962);
    path_0.lineTo(size.width * 0.3637746, size.height * 0.5157962);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.4632868, size.height * 0.5157962);
    path_1.cubicTo(
        size.width * 0.4589161,
        size.height * 0.5157962,
        size.width * 0.4550917,
        size.height * 0.5122668,
        size.width * 0.4542332,
        size.height * 0.5072248);
    path_1.cubicTo(
        size.width * 0.4152088,
        size.height * 0.2620147,
        size.width * 0.3397356,
        size.height * 0.1121828,
        size.width * 0.3389551,
        size.height * 0.1107542);
    path_1.cubicTo(
        size.width * 0.3364576,
        size.height * 0.1057962,
        size.width * 0.3379405,
        size.height * 0.09940998,
        size.width * 0.3423112,
        size.height * 0.09655284);
    path_1.cubicTo(
        size.width * 0.3466820,
        size.height * 0.09369569,
        size.width * 0.3523015,
        size.height * 0.09537637,
        size.width * 0.3548771,
        size.height * 0.1003343);
    path_1.cubicTo(
        size.width * 0.3556576,
        size.height * 0.1018470,
        size.width * 0.4326917,
        size.height * 0.2544517,
        size.width * 0.4723405,
        size.height * 0.5035273);
    path_1.cubicTo(
        size.width * 0.4731990,
        size.height * 0.5091576,
        size.width * 0.4699210,
        size.height * 0.5145357,
        size.width * 0.4649259,
        size.height * 0.5155441);
    path_1.cubicTo(
        size.width * 0.4643795,
        size.height * 0.5157962,
        size.width * 0.4638332,
        size.height * 0.5157962,
        size.width * 0.4632868,
        size.height * 0.5157962);
    path_1.lineTo(size.width * 0.4632868, size.height * 0.5157962);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.5545063, size.height * 0.5157962);
    path_2.cubicTo(
        size.width * 0.5501356,
        size.height * 0.5157962,
        size.width * 0.5462332,
        size.height * 0.5122668,
        size.width * 0.5454527,
        size.height * 0.5072248);
    path_2.cubicTo(
        size.width * 0.5064283,
        size.height * 0.2620147,
        size.width * 0.4309551,
        size.height * 0.1121828,
        size.width * 0.4301746,
        size.height * 0.1107542);
    path_2.cubicTo(
        size.width * 0.4276771,
        size.height * 0.1057962,
        size.width * 0.4291600,
        size.height * 0.09940998,
        size.width * 0.4335307,
        size.height * 0.09655284);
    path_2.cubicTo(
        size.width * 0.4379015,
        size.height * 0.09369569,
        size.width * 0.4435210,
        size.height * 0.09537637,
        size.width * 0.4460966,
        size.height * 0.1003343);
    path_2.cubicTo(
        size.width * 0.4468771,
        size.height * 0.1018470,
        size.width * 0.5239112,
        size.height * 0.2544517,
        size.width * 0.5634820,
        size.height * 0.5035273);
    path_2.cubicTo(
        size.width * 0.5644185,
        size.height * 0.5091576,
        size.width * 0.5610624,
        size.height * 0.5145357,
        size.width * 0.5560673,
        size.height * 0.5155441);
    path_2.cubicTo(
        size.width * 0.5555990,
        size.height * 0.5157962,
        size.width * 0.5549746,
        size.height * 0.5157962,
        size.width * 0.5545063,
        size.height * 0.5157962);
    path_2.lineTo(size.width * 0.5545063, size.height * 0.5157962);
    path_2.close();

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path();
    path_3.moveTo(size.width * 0.1765883, size.height * 0.5157941);
    path_3.cubicTo(
        size.width * 0.1760420,
        size.height * 0.5157941,
        size.width * 0.1754956,
        size.height * 0.5157111,
        size.width * 0.1749493,
        size.height * 0.5156271);
    path_3.cubicTo(
        size.width * 0.1699541,
        size.height * 0.5146187,
        size.width * 0.1665980,
        size.height * 0.5092405,
        size.width * 0.1675346,
        size.height * 0.5036103);
    path_3.cubicTo(
        size.width * 0.2071834,
        size.height * 0.2545336,
        size.width * 0.2842176,
        size.height * 0.1019291,
        size.width * 0.2849980,
        size.height * 0.1004165);
    path_3.cubicTo(
        size.width * 0.2874956,
        size.height * 0.09545851,
        size.width * 0.2931151,
        size.height * 0.09377784,
        size.width * 0.2975639,
        size.height * 0.09663498);
    path_3.cubicTo(
        size.width * 0.3019346,
        size.height * 0.09949212,
        size.width * 0.3034176,
        size.height * 0.1058782,
        size.width * 0.3009200,
        size.height * 0.1108361);
    path_3.cubicTo(
        size.width * 0.3001395,
        size.height * 0.1122647,
        size.width * 0.2246663,
        size.height * 0.2620966,
        size.width * 0.1856420,
        size.height * 0.5073078);
    path_3.cubicTo(
        size.width * 0.1848615,
        size.height * 0.5122658,
        size.width * 0.1809590,
        size.height * 0.5157941,
        size.width * 0.1765883,
        size.height * 0.5157941);
    path_3.lineTo(size.width * 0.1765883, size.height * 0.5157941);
    path_3.close();

    final Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path();
    path_4.moveTo(size.width * 0.2686107, size.height * 0.5158004);
    path_4.cubicTo(
        size.width * 0.2680644,
        size.height * 0.5158004,
        size.width * 0.2675180,
        size.height * 0.5157164,
        size.width * 0.2669717,
        size.height * 0.5156324);
    path_4.cubicTo(
        size.width * 0.2619766,
        size.height * 0.5146239,
        size.width * 0.2586985,
        size.height * 0.5092458,
        size.width * 0.2595571,
        size.height * 0.5036155);
    path_4.cubicTo(
        size.width * 0.2992059,
        size.height * 0.2545399,
        size.width * 0.3762400,
        size.height * 0.1019349,
        size.width * 0.3770205,
        size.height * 0.1004223);
    path_4.cubicTo(
        size.width * 0.3775893,
        size.height * 0.09925861,
        size.width * 0.3783737,
        size.height * 0.09823214,
        size.width * 0.3793239,
        size.height * 0.09740578);
    path_4.cubicTo(
        size.width * 0.3802732,
        size.height * 0.09657952,
        size.width * 0.3813707,
        size.height * 0.09597069,
        size.width * 0.3825473,
        size.height * 0.09561670);
    path_4.cubicTo(
        size.width * 0.3837229,
        size.height * 0.09526271,
        size.width * 0.3849541,
        size.height * 0.09517090,
        size.width * 0.3861649,
        size.height * 0.09534695);
    path_4.cubicTo(
        size.width * 0.3873756,
        size.height * 0.09552311,
        size.width * 0.3885395,
        size.height * 0.09596334,
        size.width * 0.3895863,
        size.height * 0.09664076);
    path_4.cubicTo(
        size.width * 0.3939571,
        size.height * 0.09949790,
        size.width * 0.3955180,
        size.height * 0.1058845,
        size.width * 0.3929424,
        size.height * 0.1108424);
    path_4.cubicTo(
        size.width * 0.3921620,
        size.height * 0.1122710,
        size.width * 0.3166888,
        size.height * 0.2621029,
        size.width * 0.2776644,
        size.height * 0.5073130);
    path_4.cubicTo(
        size.width * 0.2768059,
        size.height * 0.5122710,
        size.width * 0.2729034,
        size.height * 0.5158004,
        size.width * 0.2686107,
        size.height * 0.5158004);
    path_4.close();

    final Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path();
    path_5.moveTo(size.width * 0.3672693, size.height * 0.5158004);
    path_5.cubicTo(
        size.width * 0.3667229,
        size.height * 0.5158004,
        size.width * 0.3661766,
        size.height * 0.5157164,
        size.width * 0.3656302,
        size.height * 0.5156324);
    path_5.cubicTo(
        size.width * 0.3606351,
        size.height * 0.5146239,
        size.width * 0.3573571,
        size.height * 0.5092458,
        size.width * 0.3582156,
        size.height * 0.5036155);
    path_5.cubicTo(
        size.width * 0.3978644,
        size.height * 0.2545399,
        size.width * 0.4748985,
        size.height * 0.1019349,
        size.width * 0.4756790,
        size.height * 0.1004223);
    path_5.cubicTo(
        size.width * 0.4762478,
        size.height * 0.09925861,
        size.width * 0.4770312,
        size.height * 0.09823214,
        size.width * 0.4779815,
        size.height * 0.09740578);
    path_5.cubicTo(
        size.width * 0.4789317,
        size.height * 0.09657952,
        size.width * 0.4800293,
        size.height * 0.09597069,
        size.width * 0.4812059,
        size.height * 0.09561670);
    path_5.cubicTo(
        size.width * 0.4823815,
        size.height * 0.09526271,
        size.width * 0.4836127,
        size.height * 0.09517090,
        size.width * 0.4848234,
        size.height * 0.09534695);
    path_5.cubicTo(
        size.width * 0.4860341,
        size.height * 0.09552311,
        size.width * 0.4871980,
        size.height * 0.09596334,
        size.width * 0.4882449,
        size.height * 0.09664076);
    path_5.cubicTo(
        size.width * 0.4926156,
        size.height * 0.09949790,
        size.width * 0.4941766,
        size.height * 0.1058845,
        size.width * 0.4916010,
        size.height * 0.1108424);
    path_5.cubicTo(
        size.width * 0.4908205,
        size.height * 0.1122710,
        size.width * 0.4153473,
        size.height * 0.2621029,
        size.width * 0.3763229,
        size.height * 0.5073130);
    path_5.cubicTo(
        size.width * 0.3755424,
        size.height * 0.5122710,
        size.width * 0.3716400,
        size.height * 0.5158004,
        size.width * 0.3672693,
        size.height * 0.5158004);
    path_5.close();

    final Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    final Path path_6 = Path();
    path_6.moveTo(size.width * 0.4633571, size.height * 0.5157952);
    path_6.cubicTo(
        size.width * 0.4628107,
        size.height * 0.5157952,
        size.width * 0.4622644,
        size.height * 0.5157111,
        size.width * 0.4617180,
        size.height * 0.5156271);
    path_6.cubicTo(
        size.width * 0.4567229,
        size.height * 0.5146187,
        size.width * 0.4533668,
        size.height * 0.5092405,
        size.width * 0.4543034,
        size.height * 0.5036103);
    path_6.cubicTo(
        size.width * 0.4939522,
        size.height * 0.2546187,
        size.width * 0.5672400,
        size.height * 0.1020976,
        size.width * 0.5680205,
        size.height * 0.1005850);
    path_6.cubicTo(
        size.width * 0.5704400,
        size.height * 0.09554296,
        size.width * 0.5760595,
        size.height * 0.09369422,
        size.width * 0.5805083,
        size.height * 0.09646733);
    path_6.cubicTo(
        size.width * 0.5849571,
        size.height * 0.09924044,
        size.width * 0.5865961,
        size.height * 0.1055431,
        size.width * 0.5841766,
        size.height * 0.1105851);
    path_6.cubicTo(
        size.width * 0.5834741,
        size.height * 0.1120977,
        size.width * 0.5115132,
        size.height * 0.2619296,
        size.width * 0.4724888,
        size.height * 0.5073078);
    path_6.cubicTo(
        size.width * 0.4715522,
        size.height * 0.5122658,
        size.width * 0.4676498,
        size.height * 0.5157952,
        size.width * 0.4633571,
        size.height * 0.5157952);
    path_6.lineTo(size.width * 0.4633571, size.height * 0.5157952);
    path_6.close();

    final Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    final Path path_7 = Path();
    path_7.moveTo(size.width * 0.5545151, size.height * 0.5157941);
    path_7.cubicTo(
        size.width * 0.5539688,
        size.height * 0.5157941,
        size.width * 0.5534224,
        size.height * 0.5157111,
        size.width * 0.5528761,
        size.height * 0.5156271);
    path_7.cubicTo(
        size.width * 0.5478810,
        size.height * 0.5146187,
        size.width * 0.5445249,
        size.height * 0.5092405,
        size.width * 0.5454615,
        size.height * 0.5036103);
    path_7.cubicTo(
        size.width * 0.5851102,
        size.height * 0.2545336,
        size.width * 0.6621444,
        size.height * 0.1019291,
        size.width * 0.6629249,
        size.height * 0.1004165);
    path_7.cubicTo(
        size.width * 0.6655005,
        size.height * 0.09545851,
        size.width * 0.6711200,
        size.height * 0.09377784,
        size.width * 0.6754907,
        size.height * 0.09663498);
    path_7.cubicTo(
        size.width * 0.6798615,
        size.height * 0.09949212,
        size.width * 0.6813444,
        size.height * 0.1058782,
        size.width * 0.6788468,
        size.height * 0.1108361);
    path_7.cubicTo(
        size.width * 0.6780663,
        size.height * 0.1122647,
        size.width * 0.6025932,
        size.height * 0.2620966,
        size.width * 0.5635688,
        size.height * 0.5073078);
    path_7.cubicTo(
        size.width * 0.5627102,
        size.height * 0.5122658,
        size.width * 0.5588078,
        size.height * 0.5157941,
        size.width * 0.5545151,
        size.height * 0.5157941);
    path_7.lineTo(size.width * 0.5545151, size.height * 0.5157941);
    path_7.close();

    final Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    final Path path_8 = Path();
    path_8.moveTo(size.width * 0.6491805, size.height * 0.5157941);
    path_8.cubicTo(
        size.width * 0.6486341,
        size.height * 0.5157941,
        size.width * 0.6480878,
        size.height * 0.5157111,
        size.width * 0.6475415,
        size.height * 0.5156271);
    path_8.cubicTo(
        size.width * 0.6425463,
        size.height * 0.5146187,
        size.width * 0.6391902,
        size.height * 0.5092405,
        size.width * 0.6401268,
        size.height * 0.5036103);
    path_8.cubicTo(
        size.width * 0.6797756,
        size.height * 0.2545336,
        size.width * 0.7568098,
        size.height * 0.1019291,
        size.width * 0.7575902,
        size.height * 0.1004165);
    path_8.cubicTo(
        size.width * 0.7601659,
        size.height * 0.09545851,
        size.width * 0.7657073,
        size.height * 0.09377784,
        size.width * 0.7701561,
        size.height * 0.09663498);
    path_8.cubicTo(
        size.width * 0.7745268,
        size.height * 0.09949212,
        size.width * 0.7760098,
        size.height * 0.1058782,
        size.width * 0.7735122,
        size.height * 0.1108361);
    path_8.cubicTo(
        size.width * 0.7727317,
        size.height * 0.1122647,
        size.width * 0.6972585,
        size.height * 0.2620966,
        size.width * 0.6582341,
        size.height * 0.5073078);
    path_8.cubicTo(
        size.width * 0.6573756,
        size.height * 0.5122658,
        size.width * 0.6534732,
        size.height * 0.5157941,
        size.width * 0.6491805,
        size.height * 0.5157941);
    path_8.lineTo(size.width * 0.6491805, size.height * 0.5157941);
    path_8.close();

    final Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    final Path path_9 = Path();
    path_9.moveTo(size.width * 0.7438449, size.height * 0.5158036);
    path_9.cubicTo(
        size.width * 0.7432985,
        size.height * 0.5158036,
        size.width * 0.7427522,
        size.height * 0.5157195,
        size.width * 0.7422059,
        size.height * 0.5156355);
    path_9.cubicTo(
        size.width * 0.7372107,
        size.height * 0.5146271,
        size.width * 0.7338546,
        size.height * 0.5092489,
        size.width * 0.7347912,
        size.height * 0.5036187);
    path_9.cubicTo(
        size.width * 0.7620302,
        size.height * 0.3324422,
        size.width * 0.8067522,
        size.height * 0.2074002,
        size.width * 0.8310254,
        size.height * 0.1481565);
    path_9.cubicTo(
        size.width * 0.8332107,
        size.height * 0.1429464,
        size.width * 0.8385961,
        size.height * 0.1406775,
        size.width * 0.8432010,
        size.height * 0.1431145);
    path_9.cubicTo(
        size.width * 0.8478059,
        size.height * 0.1455515,
        size.width * 0.8498351,
        size.height * 0.1516859,
        size.width * 0.8477278,
        size.height * 0.1568960);
    path_9.cubicTo(
        size.width * 0.8238449,
        size.height * 0.2152994,
        size.width * 0.7797473,
        size.height * 0.3384086,
        size.width * 0.7528985,
        size.height * 0.5073162);
    path_9.cubicTo(
        size.width * 0.7520400,
        size.height * 0.5122742,
        size.width * 0.7482156,
        size.height * 0.5158036,
        size.width * 0.7438449,
        size.height * 0.5158036);
    path_9.lineTo(size.width * 0.7438449, size.height * 0.5158036);
    path_9.close();

    final Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    final Path path_10 = Path();
    path_10.moveTo(size.width * 0.6491102, size.height * 0.5157962);
    path_10.cubicTo(
        size.width * 0.6447395,
        size.height * 0.5157962,
        size.width * 0.6408371,
        size.height * 0.5122668,
        size.width * 0.6400566,
        size.height * 0.5072248);
    path_10.cubicTo(
        size.width * 0.6010322,
        size.height * 0.2620147,
        size.width * 0.5255590,
        size.height * 0.1121828,
        size.width * 0.5247785,
        size.height * 0.1107542);
    path_10.cubicTo(
        size.width * 0.5222810,
        size.height * 0.1057962,
        size.width * 0.5237639,
        size.height * 0.09940998,
        size.width * 0.5281346,
        size.height * 0.09655284);
    path_10.cubicTo(
        size.width * 0.5325054,
        size.height * 0.09369569,
        size.width * 0.5381249,
        size.height * 0.09537637,
        size.width * 0.5407005,
        size.height * 0.1003343);
    path_10.cubicTo(
        size.width * 0.5414810,
        size.height * 0.1018470,
        size.width * 0.6185151,
        size.height * 0.2544517,
        size.width * 0.6581639,
        size.height * 0.5035273);
    path_10.cubicTo(
        size.width * 0.6591005,
        size.height * 0.5091576,
        size.width * 0.6557444,
        size.height * 0.5145357,
        size.width * 0.6507493,
        size.height * 0.5155441);
    path_10.cubicTo(
        size.width * 0.6502029,
        size.height * 0.5157962,
        size.width * 0.6496566,
        size.height * 0.5157962,
        size.width * 0.6491102,
        size.height * 0.5157962);
    path_10.lineTo(size.width * 0.6491102, size.height * 0.5157962);
    path_10.close();

    final Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    final Path path_11 = Path();
    path_11.moveTo(size.width * 0.7438663, size.height * 0.5157962);
    path_11.cubicTo(
        size.width * 0.7394956,
        size.height * 0.5157962,
        size.width * 0.7355932,
        size.height * 0.5122668,
        size.width * 0.7348127,
        size.height * 0.5072248);
    path_11.cubicTo(
        size.width * 0.6957883,
        size.height * 0.2620147,
        size.width * 0.6203151,
        size.height * 0.1121828,
        size.width * 0.6195346,
        size.height * 0.1107542);
    path_11.cubicTo(
        size.width * 0.6170371,
        size.height * 0.1057962,
        size.width * 0.6185200,
        size.height * 0.09940998,
        size.width * 0.6228907,
        size.height * 0.09655284);
    path_11.cubicTo(
        size.width * 0.6272615,
        size.height * 0.09369569,
        size.width * 0.6328810,
        size.height * 0.09537637,
        size.width * 0.6354566,
        size.height * 0.1003343);
    path_11.cubicTo(
        size.width * 0.6362371,
        size.height * 0.1018470,
        size.width * 0.7132712,
        size.height * 0.2544517,
        size.width * 0.7529200,
        size.height * 0.5035273);
    path_11.cubicTo(
        size.width * 0.7538566,
        size.height * 0.5091576,
        size.width * 0.7505005,
        size.height * 0.5145357,
        size.width * 0.7455054,
        size.height * 0.5155441);
    path_11.cubicTo(
        size.width * 0.7449590,
        size.height * 0.5157962,
        size.width * 0.7444127,
        size.height * 0.5157962,
        size.width * 0.7438663,
        size.height * 0.5157962);
    path_11.lineTo(size.width * 0.7438663, size.height * 0.5157962);
    path_11.close();

    final Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    final Path path_12 = Path();
    path_12.moveTo(size.width * 0.8352429, size.height * 0.5157962);
    path_12.cubicTo(
        size.width * 0.8308722,
        size.height * 0.5157962,
        size.width * 0.8269698,
        size.height * 0.5122668,
        size.width * 0.8261893,
        size.height * 0.5072248);
    path_12.cubicTo(
        size.width * 0.7871649,
        size.height * 0.2620147,
        size.width * 0.7116917,
        size.height * 0.1121828,
        size.width * 0.7109112,
        size.height * 0.1107542);
    path_12.cubicTo(
        size.width * 0.7083356,
        size.height * 0.1057962,
        size.width * 0.7098966,
        size.height * 0.09940998,
        size.width * 0.7142673,
        size.height * 0.09655284);
    path_12.cubicTo(
        size.width * 0.7186380,
        size.height * 0.09369569,
        size.width * 0.7242576,
        size.height * 0.09537637,
        size.width * 0.7268332,
        size.height * 0.1003343);
    path_12.cubicTo(
        size.width * 0.7276137,
        size.height * 0.1018470,
        size.width * 0.8046478,
        size.height * 0.2544517,
        size.width * 0.8442966,
        size.height * 0.5035273);
    path_12.cubicTo(
        size.width * 0.8452332,
        size.height * 0.5091576,
        size.width * 0.8418771,
        size.height * 0.5145357,
        size.width * 0.8368820,
        size.height * 0.5155441);
    path_12.cubicTo(
        size.width * 0.8363356,
        size.height * 0.5157962,
        size.width * 0.8357893,
        size.height * 0.5157962,
        size.width * 0.8352429,
        size.height * 0.5157962);
    path_12.lineTo(size.width * 0.8352429, size.height * 0.5157962);
    path_12.close();

    final Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    final Path path_13 = Path();
    path_13.moveTo(size.width * 0.2685307, size.height * 0.5157962);
    path_13.cubicTo(
        size.width * 0.2641600,
        size.height * 0.5157962,
        size.width * 0.2603356,
        size.height * 0.5122668,
        size.width * 0.2594771,
        size.height * 0.5072248);
    path_13.cubicTo(
        size.width * 0.2204527,
        size.height * 0.2620147,
        size.width * 0.1449795,
        size.height * 0.1121828,
        size.width * 0.1441990,
        size.height * 0.1107542);
    path_13.cubicTo(
        size.width * 0.1417015,
        size.height * 0.1057962,
        size.width * 0.1431844,
        size.height * 0.09940998,
        size.width * 0.1475551,
        size.height * 0.09655284);
    path_13.cubicTo(
        size.width * 0.1519259,
        size.height * 0.09369569,
        size.width * 0.1575454,
        size.height * 0.09537637,
        size.width * 0.1601210,
        size.height * 0.1003343);
    path_13.cubicTo(
        size.width * 0.1609015,
        size.height * 0.1018470,
        size.width * 0.2379356,
        size.height * 0.2544517,
        size.width * 0.2775844,
        size.height * 0.5035273);
    path_13.cubicTo(
        size.width * 0.2784429,
        size.height * 0.5091576,
        size.width * 0.2751649,
        size.height * 0.5145357,
        size.width * 0.2701698,
        size.height * 0.5155441);
    path_13.cubicTo(
        size.width * 0.2696234,
        size.height * 0.5157962,
        size.width * 0.2690771,
        size.height * 0.5157962,
        size.width * 0.2685307,
        size.height * 0.5157962);
    path_13.lineTo(size.width * 0.2685307, size.height * 0.5157962);
    path_13.close();

    final Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    final Path path_14 = Path();
    path_14.moveTo(size.width * 0.1766020, size.height * 0.5278939);
    path_14.cubicTo(
        size.width * 0.1722312,
        size.height * 0.5278939,
        size.width * 0.1684068,
        size.height * 0.5243645,
        size.width * 0.1675483,
        size.height * 0.5193225);
    path_14.cubicTo(
        size.width * 0.1516263,
        size.height * 0.4194065,
        size.width * 0.1281337,
        size.height * 0.3238603,
        size.width * 0.09761659,
        size.height * 0.2353729);
    path_14.cubicTo(
        size.width * 0.09582107,
        size.height * 0.2300788,
        size.width * 0.09816293,
        size.height * 0.2240284,
        size.width * 0.1028459,
        size.height * 0.2219275);
    path_14.cubicTo(
        size.width * 0.1076068,
        size.height * 0.2198267,
        size.width * 0.1129141,
        size.height * 0.2225158,
        size.width * 0.1147093,
        size.height * 0.2278099);
    path_14.cubicTo(
        size.width * 0.1456166,
        size.height * 0.3175578,
        size.width * 0.1694215,
        size.height * 0.4143645,
        size.width * 0.1855776,
        size.height * 0.5156250);
    path_14.cubicTo(
        size.width * 0.1865141,
        size.height * 0.5212553,
        size.width * 0.1831580,
        size.height * 0.5266334,
        size.width * 0.1781629,
        size.height * 0.5276418);
    path_14.cubicTo(
        size.width * 0.1776946,
        size.height * 0.5278099,
        size.width * 0.1771483,
        size.height * 0.5278939,
        size.width * 0.1766020,
        size.height * 0.5278939);
    path_14.lineTo(size.width * 0.1766020, size.height * 0.5278939);
    path_14.close();

    final Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    final Path path_15 = Path();
    path_15.moveTo(size.width * 0.8353180, size.height * 0.5279034);
    path_15.cubicTo(
        size.width * 0.8347717,
        size.height * 0.5279034,
        size.width * 0.8342254,
        size.height * 0.5278193,
        size.width * 0.8336790,
        size.height * 0.5277353);
    path_15.cubicTo(
        size.width * 0.8286839,
        size.height * 0.5267269,
        size.width * 0.8254059,
        size.height * 0.5213487,
        size.width * 0.8262644,
        size.height * 0.5157185);
    path_15.cubicTo(
        size.width * 0.8424205,
        size.height * 0.4144580,
        size.width * 0.8662254,
        size.height * 0.3176513,
        size.width * 0.8971327,
        size.height * 0.2279034);
    path_15.cubicTo(
        size.width * 0.8990059,
        size.height * 0.2225252,
        size.width * 0.9043132,
        size.height * 0.2199202,
        size.width * 0.9089961,
        size.height * 0.2220210);
    path_15.cubicTo(
        size.width * 0.9137571,
        size.height * 0.2241218,
        size.width * 0.9160985,
        size.height * 0.2300882,
        size.width * 0.9142254,
        size.height * 0.2354664);
    path_15.cubicTo(
        size.width * 0.8837863,
        size.height * 0.3239538,
        size.width * 0.8602156,
        size.height * 0.4195000,
        size.width * 0.8443717,
        size.height * 0.5194160);
    path_15.cubicTo(
        size.width * 0.8435132,
        size.height * 0.5243739,
        size.width * 0.8396888,
        size.height * 0.5279034,
        size.width * 0.8353180,
        size.height * 0.5279034);
    path_15.close();

    final Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    final Path path_16 = Path();
    path_16.moveTo(size.width * 0.7568927, size.height * 0.5346229);
    path_16.cubicTo(
        size.width * 0.7442488,
        size.height * 0.5340347,
        size.width * 0.7344146,
        size.height * 0.5220179,
        size.width * 0.7349610,
        size.height * 0.5077321);
    path_16.cubicTo(
        size.width * 0.7456537,
        size.height * 0.2238666,
        size.width * 0.8369707,
        size.height * 0.06689202,
        size.width * 0.8408732,
        size.height * 0.06033739);
    path_16.cubicTo(
        size.width * 0.8479756,
        size.height * 0.04840462,
        size.width * 0.8622585,
        size.height * 0.04521134,
        size.width * 0.8727171,
        size.height * 0.05311050);
    path_16.cubicTo(
        size.width * 0.8832537,
        size.height * 0.06100966,
        size.width * 0.8860634,
        size.height * 0.07714412,
        size.width * 0.8789610,
        size.height * 0.08907689);
    path_16.cubicTo(
        size.width * 0.8781024,
        size.height * 0.09058950,
        size.width * 0.7909220,
        size.height * 0.2415977,
        size.width * 0.7807756,
        size.height * 0.5097489);
    path_16.cubicTo(
        size.width * 0.7803073,
        size.height * 0.5240347,
        size.width * 0.7695366,
        size.height * 0.5352111,
        size.width * 0.7568927,
        size.height * 0.5346229);
    path_16.close();

    final Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    final Path path_17 = Path();
    path_17.moveTo(size.width * 0.2558263, size.height * 0.5346250);
    path_17.cubicTo(
        size.width * 0.2684702,
        size.height * 0.5340368,
        size.width * 0.2783044,
        size.height * 0.5220200,
        size.width * 0.2777580,
        size.height * 0.5077342);
    path_17.cubicTo(
        size.width * 0.2670654,
        size.height * 0.2238687,
        size.width * 0.1757483,
        size.height * 0.06680987,
        size.width * 0.1718459,
        size.height * 0.06025525);
    path_17.cubicTo(
        size.width * 0.1647434,
        size.height * 0.04832248,
        size.width * 0.1504605,
        size.height * 0.04512931,
        size.width * 0.1399239,
        size.height * 0.05302847);
    path_17.cubicTo(
        size.width * 0.1293873,
        size.height * 0.06092763,
        size.width * 0.1265776,
        size.height * 0.07706208,
        size.width * 0.1336800,
        size.height * 0.08899485);
    path_17.cubicTo(
        size.width * 0.1345385,
        size.height * 0.09050746,
        size.width * 0.2217190,
        size.height * 0.2415158,
        size.width * 0.2318654,
        size.height * 0.5096670);
    path_17.cubicTo(
        size.width * 0.2324117,
        size.height * 0.5240368,
        size.width * 0.2431044,
        size.height * 0.5352132,
        size.width * 0.2558263,
        size.height * 0.5346250);
    path_17.close();

    final Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    final Path path_18 = Path();
    path_18.moveTo(size.width * 0.9376459, size.height * 0.5868929);
    path_18.cubicTo(
        size.width * 0.9360068,
        size.height * 0.5868929,
        size.width * 0.9343678,
        size.height * 0.5867248,
        size.width * 0.9326507,
        size.height * 0.5863046);
    path_18.cubicTo(
        size.width * 0.5271093,
        size.height * 0.4896660,
        size.width * 0.07185102,
        size.height * 0.5854643,
        size.width * 0.06724615,
        size.height * 0.5863887);
    path_18.cubicTo(
        size.width * 0.05483639,
        size.height * 0.5890777,
        size.width * 0.04273883,
        size.height * 0.5804223,
        size.width * 0.04024127,
        size.height * 0.5669769);
    path_18.cubicTo(
        size.width * 0.03774371,
        size.height * 0.5535315,
        size.width * 0.04578273,
        size.height * 0.5405903,
        size.width * 0.05827054,
        size.height * 0.5379013);
    path_18.cubicTo(
        size.width * 0.06287541,
        size.height * 0.5368929,
        size.width * 0.5277337,
        size.height * 0.4390777,
        size.width * 0.9425629,
        size.height * 0.5379853);
    path_18.cubicTo(
        size.width * 0.9549727,
        size.height * 0.5409265,
        size.width * 0.9627776,
        size.height * 0.5541197,
        size.width * 0.9599678,
        size.height * 0.5674811);
    path_18.cubicTo(
        size.width * 0.9588712,
        size.height * 0.5729779,
        size.width * 0.9560576,
        size.height * 0.5779044,
        size.width * 0.9519951,
        size.height * 0.5814370);
    path_18.cubicTo(
        size.width * 0.9479327,
        size.height * 0.5849695,
        size.width * 0.9428683,
        size.height * 0.5868950,
        size.width * 0.9376459,
        size.height * 0.5868929);
    path_18.lineTo(size.width * 0.9376459, size.height * 0.5868929);
    path_18.close();

    final Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff272727).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    final Path path_19 = Path();
    path_19.moveTo(size.width * 0.9502976, size.height * 0.6419328);
    path_19.cubicTo(
        size.width * 0.9148634,
        size.height * 0.6421849,
        size.width * 0.9148634,
        size.height * 0.6357983,
        size.width * 0.9052634,
        size.height * 0.6017647);
    path_19.lineTo(size.width * 0.8232341, size.height * 0.1414286);
    path_19.lineTo(size.width * 0.8232341, size.height * 0.1367227);
    path_19.cubicTo(
        size.width * 0.8232341,
        size.height * 0.1193277,
        size.width * 0.7967756,
        size.height * 0.09873950,
        size.width * 0.7744537,
        size.height * 0.09873950);
    path_19.lineTo(size.width * 0.2259268, size.height * 0.09873950);
    path_19.cubicTo(
        size.width * 0.2036049,
        size.height * 0.09873950,
        size.width * 0.1771463,
        size.height * 0.1193277,
        size.width * 0.1771463,
        size.height * 0.1367227);
    path_19.lineTo(size.width * 0.1771463, size.height * 0.1414286);
    path_19.lineTo(size.width * 0.09519541, size.height * 0.6018487);
    path_19.cubicTo(
        size.width * 0.08957590,
        size.height * 0.6441176,
        size.width * 0.08957590,
        size.height * 0.6441176,
        size.width * 0.04141980,
        size.height * 0.6410924);
    path_19.cubicTo(
        size.width * 0.01613200,
        size.height * 0.6394958,
        size.width * -0.01149727,
        size.height * 0.6420168,
        size.width * 0.004970985,
        size.height * 0.5831933);
    path_19.lineTo(size.width * 0.08543932, size.height * 0.1315126);
    path_19.cubicTo(
        size.width * 0.1102585,
        size.height * 0.001602815,
        size.width * -0.004878049,
        size.height * 0.1732511,
        0,
        size.height * 0.2433351);
    path_19.cubicTo(0, size.height * 1, size.width * 1, size.height * 1,
        size.width * 1, size.height * 1);
    path_19.lineTo(size.width * 0.7745317, size.height * 1);
    path_19.cubicTo(
        size.width * 0.8396244,
        0,
        size.width * 0.8876244,
        size.height * 0.001602815,
        size.width * -0.004878049,
        size.height * 0.9852679);
    path_19.cubicTo(size.width * 0.1221463, size.height * 1, size.width * 1,
        size.height * 1, size.width * 1, size.height * 1);
    path_19.lineTo(size.width * 0.9955707, size.height * 0.5831933);
    path_19.cubicTo(
        size.width * 1.005951,
        size.height * 0.6422689,
        size.width * 0.9932293,
        size.height * 0.6431933,
        size.width * 0.9591171,
        size.height * 0.6422689);
    path_19.cubicTo(
        size.width * 0.9559951,
        size.height * 0.6421849,
        size.width * 0.9531854,
        size.height * 0.6419328,
        size.width * 0.9502976,
        size.height * 0.6419328);
    path_19.lineTo(size.width * 0.9502976, size.height * 0.6419328);
    path_19.close();

    final Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    final Path path_20 = Path();
    path_20.moveTo(size.width * 0.3083727, size.height * 0.7524454);
    path_20.cubicTo(
        size.width * 0.3102732,
        size.height * 0.7490021,
        size.width * 0.3129327,
        size.height * 0.7458099,
        size.width * 0.3160644,
        size.height * 0.7432111);
    path_20.cubicTo(
        size.width * 0.3191971,
        size.height * 0.7406124,
        size.width * 0.3226839,
        size.height * 0.7387059,
        size.width * 0.3261522,
        size.height * 0.7376964);
    path_20.lineTo(size.width * 0.6268068, size.height * 0.6507563);
    path_20.cubicTo(
        size.width * 0.6298800,
        size.height * 0.6498687,
        size.width * 0.6328380,
        size.height * 0.6497174,
        size.width * 0.6354283,
        size.height * 0.6503151);
    path_20.cubicTo(
        size.width * 0.6380185,
        size.height * 0.6509118,
        size.width * 0.6401639,
        size.height * 0.6522405,
        size.width * 0.6416810,
        size.height * 0.6541870);
    path_20.cubicTo(
        size.width * 0.6431971,
        size.height * 0.6561324,
        size.width * 0.6440400,
        size.height * 0.6586387,
        size.width * 0.6441366,
        size.height * 0.6614884);
    path_20.cubicTo(
        size.width * 0.6442332,
        size.height * 0.6643393,
        size.width * 0.6435805,
        size.height * 0.6674496,
        size.width * 0.6422351,
        size.height * 0.6705536);
    path_20.lineTo(size.width * 0.5105063, size.height * 0.9742479);
    path_20.cubicTo(
        size.width * 0.5089854,
        size.height * 0.9777521,
        size.width * 0.5066361,
        size.height * 0.9811218,
        size.width * 0.5037132,
        size.height * 0.9839926);
    path_20.cubicTo(
        size.width * 0.5007893,
        size.height * 0.9868624,
        size.width * 0.4974039,
        size.height * 0.9891250,
        size.width * 0.4939220,
        size.height * 0.9905336);
    path_20.cubicTo(
        size.width * 0.4904400,
        size.height * 0.9919422,
        size.width * 0.4869941,
        size.height * 0.9924433,
        size.width * 0.4839590,
        size.height * 0.9919832);
    path_20.cubicTo(
        size.width * 0.4809229,
        size.height * 0.9915231,
        size.width * 0.4784127,
        size.height * 0.9901187,
        size.width * 0.4766995,
        size.height * 0.9879223);
    path_20.lineTo(size.width * 0.3077737, size.height * 0.7711681);
    path_20.cubicTo(
        size.width * 0.3060605,
        size.height * 0.7689706,
        size.width * 0.3052098,
        size.height * 0.7660641,
        size.width * 0.3053161,
        size.height * 0.7627637);
    path_20.cubicTo(
        size.width * 0.3054215,
        size.height * 0.7594632,
        size.width * 0.3064780,
        size.height * 0.7558950,
        size.width * 0.3083727,
        size.height * 0.7524454);
    path_20.close();

    final Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
