import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
class Feature with _$Feature {
  const factory Feature({
    @JsonKey(name: 'key') @Default('') String key,
    @JsonKey(name: 'boolean') @Default(false) bool boolValue,
    @JsonKey(name: 'string') @Default('') String stringValue,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}
