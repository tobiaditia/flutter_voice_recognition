
import 'dart:convert';

List<Theory> theoryFromJson(String str) => List<Theory>.from(json.decode(str).map((x) => Theory.fromJson(x)));

String theoryToJson(List<Theory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Theory {
    Theory({
        required this.id,
        required this.classId,
        required this.usersId,
        required this.name,
        required this.content,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String classId;
    String usersId;
    String name;
    String content;
    DateTime createdAt;
    DateTime updatedAt;

    factory Theory.fromJson(Map<String, dynamic> json) => Theory(
        id: json["id"],
        classId: json["class_id"],
        usersId: json["users_id"],
        name: json["name"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "class_id": classId,
        "users_id": usersId,
        "name": name,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };

    static List<Theory> fromJsonList(List? data) {
      if (data == null) return [];
      return data.map((e) => Theory.fromJson(e)).toList();
    }
}
