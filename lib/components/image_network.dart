import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageNetwork extends StatelessWidget {
  final String? urlImage;
  final double? width;
  final double? height;

  const ImageNetwork(
      {super.key,
      required this.urlImage,
      required this.width,
      required this.height});

  Future<String> geToken() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString('accessToken'));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: geToken(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.red,
              width: width,
              height: height,
            );
          }

          return Image(
            image: NetworkImage("http://172.20.10.2/woofers$urlImage",
                headers:
                    Map.from({"Authorization": "Bearer ${snapshot.data}"})),
            width: width,
            height: height,
          );
        });
  }
}
