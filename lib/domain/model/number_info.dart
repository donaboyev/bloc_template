import 'package:hive/hive.dart';

part 'number_info.g.dart';

@HiveType(typeId: 0)
class NumberInfo extends HiveObject {
  @HiveField(0)
  final String? text;

  @HiveField(1)
  final int? number;

  @HiveField(2)
  final bool? found;

  @HiveField(3)
  final String? type;

  @HiveField(4)
  final DateTime savedAt;

  NumberInfo({
    this.text,
    this.number,
    this.found,
    this.type,
    DateTime? savedAt,
  }) : savedAt = savedAt ?? DateTime.now();

  factory NumberInfo.fromCommonResponse(dynamic response) {
    return NumberInfo(
      text: response.text,
      number: response.number,
      found: response.found,
      type: response.type,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
      'found': found,
      'type': type,
      'savedAt': savedAt.toIso8601String(),
    };
  }
}