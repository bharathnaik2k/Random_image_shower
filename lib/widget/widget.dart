import 'package:rand_img_shower/export.dart';

Widget svgwidget(SvgPicture picture) {
  return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 15,
          ),
        ],
      ),
      child: picture);
}

Widget textwidget(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
  );
}
