import 'dart:convert';

import 'package:teste_api/src/modules/home/models/slip.dart';

class SlipModel {
  Slip? slip;

  SlipModel({this.slip});

  Map<String, dynamic> toMap() {
    return {
      'slip': slip?.toMap(),
    };
  }

  factory SlipModel.fromMap(Map<String, dynamic> map) {
    return SlipModel(
      slip: map['slip'] != null ? Slip.fromMap(map['slip']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SlipModel.fromJson(String source) => SlipModel.fromMap(json.decode(source));
}
