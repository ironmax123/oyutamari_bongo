import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({required String test}) = _HomePageState;
}
