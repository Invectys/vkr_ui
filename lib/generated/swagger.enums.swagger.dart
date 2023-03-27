import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum DayOfWeek {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6);

  final int? value;

  const DayOfWeek(this.value);
}
