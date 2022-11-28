part of 'support_cubit.dart';

@freezed
class SupportState with _$SupportState {
   const factory SupportState.initial() =
      _$SupportInitialState;
  const factory SupportState.loading() =
      _$SupportLoadingState;
  const factory SupportState.loaded(List<Map<String, dynamic>> supportData) =
      _$SupportLoadedState;
  const factory SupportState.changed() =
      _$SupportChangedState;
}
