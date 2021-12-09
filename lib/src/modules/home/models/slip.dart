import 'dart:convert';

class Slip {
  int? id;
  String? advice;

  Slip({
    this.id,
    this.advice,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'advice': advice,
    };
  }

  factory Slip.fromMap(Map<String, dynamic> map) {
    return Slip(
      id: map['id'] != null ? map['id'] : null,
      advice: map['advice'] != null ? map['advice'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Slip.fromJson(String source) => Slip.fromMap(json.decode(source));
}
