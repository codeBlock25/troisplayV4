//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.9223300970873787).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class Player1Icon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.6295874, size.height * 0.5189474);
    path_0.cubicTo(
        size.width * 0.6283417,
        size.height * 0.5188989,
        size.width * 0.6270893,
        size.height * 0.5188726,
        size.width * 0.6258243,
        size.height * 0.5188726);
    path_0.lineTo(size.width * 0.1104398, size.height * 0.5188726);
    path_0.cubicTo(
        size.width * 0.08114922,
        size.height * 0.5188726,
        size.width * 0.05305845,
        size.height * 0.5314884,
        size.width * 0.03234699,
        size.height * 0.5539432);
    path_0.cubicTo(size.width * 0.01163553, size.height * 0.5763989, 0,
        size.height * 0.6068558, 0, size.height * 0.6386126);
    path_0.lineTo(0, size.height * 0.6785253);
    path_0.cubicTo(
        0,
        size.height * 0.8358642,
        size.width * 0.1369447,
        size.height * 0.9978316,
        size.width * 0.3681320,
        size.height * 0.9978316);
    path_0.cubicTo(
        size.width * 0.3785311,
        size.height * 0.9978474,
        size.width * 0.3889262,
        size.height * 0.9975168,
        size.width * 0.3993039,
        size.height * 0.9968421);
    path_0.lineTo(size.width * 0.4267680, size.height * 0.9968421);
    path_0.cubicTo(
        size.width * 0.5258748,
        size.height * 0.9870347,
        size.width * 0.5316631,
        size.height * 0.9854526,
        size.width * 0.5916369,
        size.height * 0.9690558);
    path_0.cubicTo(
        size.width * 0.5958932,
        size.height * 0.9678916,
        size.width * 0.6004223,
        size.height * 0.9666537,
        size.width * 0.6052777,
        size.height * 0.9653326);
    path_0.cubicTo(
        size.width * 0.7789621,
        size.height * 0.9180684,
        size.width * 0.8609806,
        size.height * 0.5189474,
        size.width * 0.7355408,
        size.height * 0.5189474);
    path_0.lineTo(size.width * 0.6295874, size.height * 0.5189474);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffF0F0F0).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.3681330, 0);
    path_1.cubicTo(
        size.width * 0.4218320,
        0,
        size.width * 0.4733320,
        size.height * 0.02312821,
        size.width * 0.5113029,
        size.height * 0.06429684);
    path_1.cubicTo(
        size.width * 0.5492738,
        size.height * 0.1054653,
        size.width * 0.5706058,
        size.height * 0.1613021,
        size.width * 0.5706058,
        size.height * 0.2195232);
    path_1.cubicTo(
        size.width * 0.5706058,
        size.height * 0.2777442,
        size.width * 0.5492738,
        size.height * 0.3335811,
        size.width * 0.5113029,
        size.height * 0.3747495);
    path_1.cubicTo(
        size.width * 0.4733320,
        size.height * 0.4159179,
        size.width * 0.4218320,
        size.height * 0.4390463,
        size.width * 0.3681330,
        size.height * 0.4390463);
    path_1.cubicTo(
        size.width * 0.3144340,
        size.height * 0.4390463,
        size.width * 0.2629340,
        size.height * 0.4159179,
        size.width * 0.2249631,
        size.height * 0.3747495);
    path_1.cubicTo(
        size.width * 0.1869922,
        size.height * 0.3335811,
        size.width * 0.1656602,
        size.height * 0.2777442,
        size.width * 0.1656602,
        size.height * 0.2195232);
    path_1.cubicTo(
        size.width * 0.1656602,
        size.height * 0.1613021,
        size.width * 0.1869922,
        size.height * 0.1054653,
        size.width * 0.2249631,
        size.height * 0.06429684);
    path_1.cubicTo(size.width * 0.2629340, size.height * 0.02312821,
        size.width * 0.3144340, 0, size.width * 0.3681330, 0);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffF0F0F0).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.6691728, size.height * 0.5312632);
    path_2.lineTo(size.width * 0.6549680, size.height * 0.6488179);
    path_2.moveTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.lineTo(size.width * 0.7747301, size.height * 0.4067547);
    path_2.lineTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.close();
    path_2.moveTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.cubicTo(
        size.width * 0.8096126,
        size.height * 0.4923021,
        size.width * 0.8365553,
        size.height * 0.4952526,
        size.width * 0.8542456,
        size.height * 0.4977653);
    path_2.cubicTo(
        size.width * 0.8898388,
        size.height * 0.5028211,
        size.width * 0.9242495,
        size.height * 0.5176737,
        size.width * 0.9337602,
        size.height * 0.5887747);
    path_2.cubicTo(
        size.width * 0.9432709,
        size.height * 0.6598768,
        size.width * 0.9385359,
        size.height * 0.6990611,
        size.width * 0.9326165,
        size.height * 0.7480432);
    path_2.cubicTo(
        size.width * 0.9266981,
        size.height * 0.7970242,
        size.width * 0.8899204,
        size.height * 0.8017642,
        size.width * 0.8543262,
        size.height * 0.7967084);
    path_2.cubicTo(
        size.width * 0.8187330,
        size.height * 0.7916526,
        size.width * 0.8094447,
        size.height * 0.7106179,
        size.width * 0.7392175,
        size.height * 0.7006421);
    path_2.cubicTo(
        size.width * 0.6689913,
        size.height * 0.6906674,
        size.width * 0.6407631,
        size.height * 0.7663726,
        size.width * 0.6051689,
        size.height * 0.7613168);
    path_2.cubicTo(
        size.width * 0.5695757,
        size.height * 0.7562611,
        size.width * 0.5351650,
        size.height * 0.7414084,
        size.width * 0.5410845,
        size.height * 0.6924274);
    path_2.cubicTo(
        size.width * 0.5470029,
        size.height * 0.6434463,
        size.width * 0.5517379,
        size.height * 0.6042611,
        size.width * 0.5778214,
        size.height * 0.5382158);
    path_2.cubicTo(
        size.width * 0.6039039,
        size.height * 0.4721695,
        size.width * 0.6406816,
        size.height * 0.4674295,
        size.width * 0.6762757,
        size.height * 0.4724853);
    path_2.cubicTo(
        size.width * 0.6939660,
        size.height * 0.4749979,
        size.width * 0.7207000,
        size.height * 0.4796726,
        size.width * 0.7652602,
        size.height * 0.4851253);
    path_2.close();
    path_2.moveTo(size.width * 0.8507350, size.height * 0.6766253);
    path_2.cubicTo(
        size.width * 0.8554544,
        size.height * 0.6772958,
        size.width * 0.8602311,
        size.height * 0.6758747,
        size.width * 0.8640126,
        size.height * 0.6726747);
    path_2.cubicTo(
        size.width * 0.8677942,
        size.height * 0.6694747,
        size.width * 0.8702709,
        size.height * 0.6647568,
        size.width * 0.8708990,
        size.height * 0.6595611);
    path_2.cubicTo(
        size.width * 0.8715272,
        size.height * 0.6543642,
        size.width * 0.8702544,
        size.height * 0.6491147,
        size.width * 0.8673602,
        size.height * 0.6449663);
    path_2.cubicTo(
        size.width * 0.8644670,
        size.height * 0.6408179,
        size.width * 0.8601893,
        size.height * 0.6381105,
        size.width * 0.8554699,
        size.height * 0.6374400);
    path_2.cubicTo(
        size.width * 0.8507495,
        size.height * 0.6367695,
        size.width * 0.8459738,
        size.height * 0.6381916,
        size.width * 0.8421922,
        size.height * 0.6413916);
    path_2.cubicTo(
        size.width * 0.8384107,
        size.height * 0.6445916,
        size.width * 0.8359330,
        size.height * 0.6493084,
        size.width * 0.8353049,
        size.height * 0.6545053);
    path_2.cubicTo(
        size.width * 0.8346777,
        size.height * 0.6597011,
        size.width * 0.8359505,
        size.height * 0.6649505,
        size.width * 0.8388437,
        size.height * 0.6690989);
    path_2.cubicTo(
        size.width * 0.8417369,
        size.height * 0.6732474,
        size.width * 0.8460146,
        size.height * 0.6759547,
        size.width * 0.8507350,
        size.height * 0.6766253);
    path_2.close();
    path_2.moveTo(size.width * 0.7866495, size.height * 0.6077358);
    path_2.cubicTo(
        size.width * 0.7913689,
        size.height * 0.6084063,
        size.width * 0.7961456,
        size.height * 0.6069853,
        size.width * 0.7999272,
        size.height * 0.6037853);
    path_2.cubicTo(
        size.width * 0.8037087,
        size.height * 0.6005853,
        size.width * 0.8061854,
        size.height * 0.5958674,
        size.width * 0.8068136,
        size.height * 0.5906716);
    path_2.cubicTo(
        size.width * 0.8074417,
        size.height * 0.5854747,
        size.width * 0.8061689,
        size.height * 0.5802253,
        size.width * 0.8032757,
        size.height * 0.5760768);
    path_2.cubicTo(
        size.width * 0.8003816,
        size.height * 0.5719284,
        size.width * 0.7961049,
        size.height * 0.5692211,
        size.width * 0.7913845,
        size.height * 0.5685505);
    path_2.cubicTo(
        size.width * 0.7866641,
        size.height * 0.5678811,
        size.width * 0.7818883,
        size.height * 0.5693021,
        size.width * 0.7781068,
        size.height * 0.5725021);
    path_2.cubicTo(
        size.width * 0.7743252,
        size.height * 0.5757021,
        size.width * 0.7718476,
        size.height * 0.5804189,
        size.width * 0.7712194,
        size.height * 0.5856158);
    path_2.cubicTo(
        size.width * 0.7705922,
        size.height * 0.5908116,
        size.width * 0.7718650,
        size.height * 0.5960611,
        size.width * 0.7747583,
        size.height * 0.6002095);
    path_2.cubicTo(
        size.width * 0.7776524,
        size.height * 0.6043579,
        size.width * 0.7819291,
        size.height * 0.6070653,
        size.width * 0.7866495,
        size.height * 0.6077358);
    path_2.lineTo(size.width * 0.7866495, size.height * 0.6077358);
    path_2.close();
    path_2.moveTo(size.width * 0.6086796, size.height * 0.5824558);
    path_2.lineTo(size.width * 0.7154612, size.height * 0.5976242);
    path_2.lineTo(size.width * 0.6086796, size.height * 0.5824558);
    path_2.close();

    final Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04854369;
    paint2Stroke.color = const Color(0xff0042EC).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Stroke);

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.9223300970873787).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class Player2Icon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path();
    path_0.moveTo(size.width * 0.6295874, size.height * 0.5189474);
    path_0.cubicTo(
        size.width * 0.6283417,
        size.height * 0.5188989,
        size.width * 0.6270893,
        size.height * 0.5188726,
        size.width * 0.6258243,
        size.height * 0.5188726);
    path_0.lineTo(size.width * 0.1104398, size.height * 0.5188726);
    path_0.cubicTo(
        size.width * 0.08114922,
        size.height * 0.5188726,
        size.width * 0.05305845,
        size.height * 0.5314884,
        size.width * 0.03234699,
        size.height * 0.5539432);
    path_0.cubicTo(size.width * 0.01163553, size.height * 0.5763989, 0,
        size.height * 0.6068558, 0, size.height * 0.6386126);
    path_0.lineTo(0, size.height * 0.6785253);
    path_0.cubicTo(
        0,
        size.height * 0.8358642,
        size.width * 0.1369447,
        size.height * 0.9978316,
        size.width * 0.3681320,
        size.height * 0.9978316);
    path_0.cubicTo(
        size.width * 0.3785311,
        size.height * 0.9978474,
        size.width * 0.3889262,
        size.height * 0.9975168,
        size.width * 0.3993039,
        size.height * 0.9968421);
    path_0.lineTo(size.width * 0.4267680, size.height * 0.9968421);
    path_0.cubicTo(
        size.width * 0.5258748,
        size.height * 0.9870347,
        size.width * 0.5316631,
        size.height * 0.9854526,
        size.width * 0.5916369,
        size.height * 0.9690558);
    path_0.cubicTo(
        size.width * 0.5958932,
        size.height * 0.9678916,
        size.width * 0.6004223,
        size.height * 0.9666537,
        size.width * 0.6052777,
        size.height * 0.9653326);
    path_0.cubicTo(
        size.width * 0.7789621,
        size.height * 0.9180684,
        size.width * 0.8609806,
        size.height * 0.5189474,
        size.width * 0.7355408,
        size.height * 0.5189474);
    path_0.lineTo(size.width * 0.6295874, size.height * 0.5189474);
    path_0.close();

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff0042EC).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path();
    path_1.moveTo(size.width * 0.3681330, 0);
    path_1.cubicTo(
        size.width * 0.4218320,
        0,
        size.width * 0.4733320,
        size.height * 0.02312821,
        size.width * 0.5113029,
        size.height * 0.06429684);
    path_1.cubicTo(
        size.width * 0.5492738,
        size.height * 0.1054653,
        size.width * 0.5706058,
        size.height * 0.1613021,
        size.width * 0.5706058,
        size.height * 0.2195232);
    path_1.cubicTo(
        size.width * 0.5706058,
        size.height * 0.2777442,
        size.width * 0.5492738,
        size.height * 0.3335811,
        size.width * 0.5113029,
        size.height * 0.3747495);
    path_1.cubicTo(
        size.width * 0.4733320,
        size.height * 0.4159179,
        size.width * 0.4218320,
        size.height * 0.4390463,
        size.width * 0.3681330,
        size.height * 0.4390463);
    path_1.cubicTo(
        size.width * 0.3144340,
        size.height * 0.4390463,
        size.width * 0.2629340,
        size.height * 0.4159179,
        size.width * 0.2249631,
        size.height * 0.3747495);
    path_1.cubicTo(
        size.width * 0.1869922,
        size.height * 0.3335811,
        size.width * 0.1656602,
        size.height * 0.2777442,
        size.width * 0.1656602,
        size.height * 0.2195232);
    path_1.cubicTo(
        size.width * 0.1656602,
        size.height * 0.1613021,
        size.width * 0.1869922,
        size.height * 0.1054653,
        size.width * 0.2249631,
        size.height * 0.06429684);
    path_1.cubicTo(size.width * 0.2629340, size.height * 0.02312821,
        size.width * 0.3144340, 0, size.width * 0.3681330, 0);
    path_1.close();

    final Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff0042EC).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path();
    path_2.moveTo(size.width * 0.6691728, size.height * 0.5312632);
    path_2.lineTo(size.width * 0.6549680, size.height * 0.6488179);
    path_2.moveTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.lineTo(size.width * 0.7747301, size.height * 0.4067547);
    path_2.lineTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.close();
    path_2.moveTo(size.width * 0.7652602, size.height * 0.4851253);
    path_2.cubicTo(
        size.width * 0.8096126,
        size.height * 0.4923021,
        size.width * 0.8365553,
        size.height * 0.4952526,
        size.width * 0.8542456,
        size.height * 0.4977653);
    path_2.cubicTo(
        size.width * 0.8898388,
        size.height * 0.5028211,
        size.width * 0.9242495,
        size.height * 0.5176737,
        size.width * 0.9337602,
        size.height * 0.5887747);
    path_2.cubicTo(
        size.width * 0.9432709,
        size.height * 0.6598768,
        size.width * 0.9385359,
        size.height * 0.6990611,
        size.width * 0.9326165,
        size.height * 0.7480432);
    path_2.cubicTo(
        size.width * 0.9266981,
        size.height * 0.7970242,
        size.width * 0.8899204,
        size.height * 0.8017642,
        size.width * 0.8543262,
        size.height * 0.7967084);
    path_2.cubicTo(
        size.width * 0.8187330,
        size.height * 0.7916526,
        size.width * 0.8094447,
        size.height * 0.7106179,
        size.width * 0.7392175,
        size.height * 0.7006421);
    path_2.cubicTo(
        size.width * 0.6689913,
        size.height * 0.6906674,
        size.width * 0.6407631,
        size.height * 0.7663726,
        size.width * 0.6051689,
        size.height * 0.7613168);
    path_2.cubicTo(
        size.width * 0.5695757,
        size.height * 0.7562611,
        size.width * 0.5351650,
        size.height * 0.7414084,
        size.width * 0.5410845,
        size.height * 0.6924274);
    path_2.cubicTo(
        size.width * 0.5470029,
        size.height * 0.6434463,
        size.width * 0.5517379,
        size.height * 0.6042611,
        size.width * 0.5778214,
        size.height * 0.5382158);
    path_2.cubicTo(
        size.width * 0.6039039,
        size.height * 0.4721695,
        size.width * 0.6406816,
        size.height * 0.4674295,
        size.width * 0.6762757,
        size.height * 0.4724853);
    path_2.cubicTo(
        size.width * 0.6939660,
        size.height * 0.4749979,
        size.width * 0.7207000,
        size.height * 0.4796726,
        size.width * 0.7652602,
        size.height * 0.4851253);
    path_2.close();
    path_2.moveTo(size.width * 0.8507350, size.height * 0.6766253);
    path_2.cubicTo(
        size.width * 0.8554544,
        size.height * 0.6772958,
        size.width * 0.8602311,
        size.height * 0.6758747,
        size.width * 0.8640126,
        size.height * 0.6726747);
    path_2.cubicTo(
        size.width * 0.8677942,
        size.height * 0.6694747,
        size.width * 0.8702709,
        size.height * 0.6647568,
        size.width * 0.8708990,
        size.height * 0.6595611);
    path_2.cubicTo(
        size.width * 0.8715272,
        size.height * 0.6543642,
        size.width * 0.8702544,
        size.height * 0.6491147,
        size.width * 0.8673602,
        size.height * 0.6449663);
    path_2.cubicTo(
        size.width * 0.8644670,
        size.height * 0.6408179,
        size.width * 0.8601893,
        size.height * 0.6381105,
        size.width * 0.8554699,
        size.height * 0.6374400);
    path_2.cubicTo(
        size.width * 0.8507495,
        size.height * 0.6367695,
        size.width * 0.8459738,
        size.height * 0.6381916,
        size.width * 0.8421922,
        size.height * 0.6413916);
    path_2.cubicTo(
        size.width * 0.8384107,
        size.height * 0.6445916,
        size.width * 0.8359330,
        size.height * 0.6493084,
        size.width * 0.8353049,
        size.height * 0.6545053);
    path_2.cubicTo(
        size.width * 0.8346777,
        size.height * 0.6597011,
        size.width * 0.8359505,
        size.height * 0.6649505,
        size.width * 0.8388437,
        size.height * 0.6690989);
    path_2.cubicTo(
        size.width * 0.8417369,
        size.height * 0.6732474,
        size.width * 0.8460146,
        size.height * 0.6759547,
        size.width * 0.8507350,
        size.height * 0.6766253);
    path_2.close();
    path_2.moveTo(size.width * 0.7866495, size.height * 0.6077358);
    path_2.cubicTo(
        size.width * 0.7913689,
        size.height * 0.6084063,
        size.width * 0.7961456,
        size.height * 0.6069853,
        size.width * 0.7999272,
        size.height * 0.6037853);
    path_2.cubicTo(
        size.width * 0.8037087,
        size.height * 0.6005853,
        size.width * 0.8061854,
        size.height * 0.5958674,
        size.width * 0.8068136,
        size.height * 0.5906716);
    path_2.cubicTo(
        size.width * 0.8074417,
        size.height * 0.5854747,
        size.width * 0.8061689,
        size.height * 0.5802253,
        size.width * 0.8032757,
        size.height * 0.5760768);
    path_2.cubicTo(
        size.width * 0.8003816,
        size.height * 0.5719284,
        size.width * 0.7961049,
        size.height * 0.5692211,
        size.width * 0.7913845,
        size.height * 0.5685505);
    path_2.cubicTo(
        size.width * 0.7866641,
        size.height * 0.5678811,
        size.width * 0.7818883,
        size.height * 0.5693021,
        size.width * 0.7781068,
        size.height * 0.5725021);
    path_2.cubicTo(
        size.width * 0.7743252,
        size.height * 0.5757021,
        size.width * 0.7718476,
        size.height * 0.5804189,
        size.width * 0.7712194,
        size.height * 0.5856158);
    path_2.cubicTo(
        size.width * 0.7705922,
        size.height * 0.5908116,
        size.width * 0.7718650,
        size.height * 0.5960611,
        size.width * 0.7747583,
        size.height * 0.6002095);
    path_2.cubicTo(
        size.width * 0.7776524,
        size.height * 0.6043579,
        size.width * 0.7819291,
        size.height * 0.6070653,
        size.width * 0.7866495,
        size.height * 0.6077358);
    path_2.lineTo(size.width * 0.7866495, size.height * 0.6077358);
    path_2.close();
    path_2.moveTo(size.width * 0.6086796, size.height * 0.5824558);
    path_2.lineTo(size.width * 0.7154612, size.height * 0.5976242);
    path_2.lineTo(size.width * 0.6086796, size.height * 0.5824558);
    path_2.close();

    final Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04854369;
    paint2Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_2, paint2Stroke);

    final Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
