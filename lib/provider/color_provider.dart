import 'dart:convert';
import 'package:color_genrate_app/model/color_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorProvider extends ChangeNotifier {
  Future<List<ColorModel>?> getColors() async {
    String js = await rootBundle.loadString("assets/jsbank/mycolors.json");

    if (js != null) {
      List<Map<String, dynamic>> color = json.decode(js);

      List<ColorModel> data =
          color.map((e) => ColorModel.json(data: e)).toList();
      return data;
    }
    notifyListeners();
  }
}
