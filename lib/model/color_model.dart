class ColorModel {
  String name;
  String hex;

  ColorModel({required this.name, required this.hex});

  factory ColorModel.json({required Map data}) {
    return ColorModel(name: data['name'], hex: data['hex']);
  }
}
