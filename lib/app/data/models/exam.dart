
import 'dart:convert';

List<Exam> examFromJson(String str) => List<Exam>.from(json.decode(str).map((x) => Exam.fromJson(x)));

String examToJson(List<Exam> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Exam {
    Exam({
        required this.id,
        required this.classId,
        required this.usersId,
        required this.name,
        required this.type,
        required this.active,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String classId;
    String usersId;
    String name;
    String type;
    String active;
    DateTime createdAt;
    DateTime updatedAt;

    factory Exam.fromJson(Map<String, dynamic> json) => Exam(
        id: json["id"],
        classId: json["class_id"],
        usersId: json["users_id"],
        name: json["name"],
        type: json["type"],
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "class_id": classId,
        "users_id": usersId,
        "name": name,
        "type": type,
        "active": active,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };

    static List<Exam> fromJsonList(List? data) {
      if (data == null) return [];
      return data.map((e) => Exam.fromJson(e)).toList();
    }
}
