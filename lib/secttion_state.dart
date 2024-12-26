import 'package:freezed_annotation/freezed_annotation.dart';

part 'secttion_state.freezed.dart';

@freezed
class SectionPageState with _$SectionPageState {
  const factory SectionPageState({
    required double filldNum,
  }) = _SectionPageState;
}
