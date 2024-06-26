// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class States {
  int id;
  String name;
  String capital;
  String time_zone;
  States({
    required this.id,
    required this.name,
    required this.capital,
    required this.time_zone,
  });


  States copyWith({
    int? id,
    String? name,
    String? capital,
    String? time_zone,
  }) {
    return States(
      id: id ?? this.id,
      name: name ?? this.name,
      capital: capital ?? this.capital,
      time_zone: time_zone ?? this.time_zone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'capital': capital,
      'time_zone': time_zone,
    };
  }

  factory States.fromMap(Map<String, dynamic> map) {
    return States(
      id: map['id'] as int,
      name: map['name'] as String,
      capital: map['capital'] as String,
      time_zone: map['time_zone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory States.fromJson(String source) => States.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'States(id: $id, name: $name, capital: $capital, time_zone: $time_zone)';
  }

  @override
  bool operator ==(covariant States other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.capital == capital &&
      other.time_zone == time_zone;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      capital.hashCode ^
      time_zone.hashCode;
  }
}
