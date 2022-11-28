// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsEvent {
  String get userLogin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadTickets,
    required TResult Function(String content, String userLogin) addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadTickets,
    TResult? Function(String content, String userLogin)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadTickets,
    TResult Function(String content, String userLogin)? addTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketLoadTicketsEvent value) loadTickets,
    required TResult Function(_$TicketAddTicketEvent value) addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult? Function(_$TicketAddTicketEvent value)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult Function(_$TicketAddTicketEvent value)? addTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsEventCopyWith<TicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
  @useResult
  $Res call({String userLogin});
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
  }) {
    return _then(_value.copyWith(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$TicketLoadTicketsEventCopyWith<$Res>
    implements $TicketsEventCopyWith<$Res> {
  factory _$$_$TicketLoadTicketsEventCopyWith(_$_$TicketLoadTicketsEvent value,
          $Res Function(_$_$TicketLoadTicketsEvent) then) =
      __$$_$TicketLoadTicketsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userLogin});
}

/// @nodoc
class __$$_$TicketLoadTicketsEventCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_$TicketLoadTicketsEvent>
    implements _$$_$TicketLoadTicketsEventCopyWith<$Res> {
  __$$_$TicketLoadTicketsEventCopyWithImpl(_$_$TicketLoadTicketsEvent _value,
      $Res Function(_$_$TicketLoadTicketsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
  }) {
    return _then(_$_$TicketLoadTicketsEvent(
      null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$TicketLoadTicketsEvent implements _$TicketLoadTicketsEvent {
  const _$_$TicketLoadTicketsEvent(this.userLogin);

  @override
  final String userLogin;

  @override
  String toString() {
    return 'TicketsEvent.loadTickets(userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketLoadTicketsEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketLoadTicketsEventCopyWith<_$_$TicketLoadTicketsEvent>
      get copyWith =>
          __$$_$TicketLoadTicketsEventCopyWithImpl<_$_$TicketLoadTicketsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadTickets,
    required TResult Function(String content, String userLogin) addTicket,
  }) {
    return loadTickets(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadTickets,
    TResult? Function(String content, String userLogin)? addTicket,
  }) {
    return loadTickets?.call(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadTickets,
    TResult Function(String content, String userLogin)? addTicket,
    required TResult orElse(),
  }) {
    if (loadTickets != null) {
      return loadTickets(userLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketLoadTicketsEvent value) loadTickets,
    required TResult Function(_$TicketAddTicketEvent value) addTicket,
  }) {
    return loadTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult? Function(_$TicketAddTicketEvent value)? addTicket,
  }) {
    return loadTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult Function(_$TicketAddTicketEvent value)? addTicket,
    required TResult orElse(),
  }) {
    if (loadTickets != null) {
      return loadTickets(this);
    }
    return orElse();
  }
}

abstract class _$TicketLoadTicketsEvent implements TicketsEvent {
  const factory _$TicketLoadTicketsEvent(final String userLogin) =
      _$_$TicketLoadTicketsEvent;

  @override
  String get userLogin;
  @override
  @JsonKey(ignore: true)
  _$$_$TicketLoadTicketsEventCopyWith<_$_$TicketLoadTicketsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$TicketAddTicketEventCopyWith<$Res>
    implements $TicketsEventCopyWith<$Res> {
  factory _$$_$TicketAddTicketEventCopyWith(_$_$TicketAddTicketEvent value,
          $Res Function(_$_$TicketAddTicketEvent) then) =
      __$$_$TicketAddTicketEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String userLogin});
}

/// @nodoc
class __$$_$TicketAddTicketEventCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_$TicketAddTicketEvent>
    implements _$$_$TicketAddTicketEventCopyWith<$Res> {
  __$$_$TicketAddTicketEventCopyWithImpl(_$_$TicketAddTicketEvent _value,
      $Res Function(_$_$TicketAddTicketEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? userLogin = null,
  }) {
    return _then(_$_$TicketAddTicketEvent(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$TicketAddTicketEvent implements _$TicketAddTicketEvent {
  const _$_$TicketAddTicketEvent(
      {required this.content, required this.userLogin});

  @override
  final String content;
  @override
  final String userLogin;

  @override
  String toString() {
    return 'TicketsEvent.addTicket(content: $content, userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketAddTicketEvent &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketAddTicketEventCopyWith<_$_$TicketAddTicketEvent> get copyWith =>
      __$$_$TicketAddTicketEventCopyWithImpl<_$_$TicketAddTicketEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadTickets,
    required TResult Function(String content, String userLogin) addTicket,
  }) {
    return addTicket(content, userLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadTickets,
    TResult? Function(String content, String userLogin)? addTicket,
  }) {
    return addTicket?.call(content, userLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadTickets,
    TResult Function(String content, String userLogin)? addTicket,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(content, userLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketLoadTicketsEvent value) loadTickets,
    required TResult Function(_$TicketAddTicketEvent value) addTicket,
  }) {
    return addTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult? Function(_$TicketAddTicketEvent value)? addTicket,
  }) {
    return addTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketLoadTicketsEvent value)? loadTickets,
    TResult Function(_$TicketAddTicketEvent value)? addTicket,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(this);
    }
    return orElse();
  }
}

abstract class _$TicketAddTicketEvent implements TicketsEvent {
  const factory _$TicketAddTicketEvent(
      {required final String content,
      required final String userLogin}) = _$_$TicketAddTicketEvent;

  String get content;
  @override
  String get userLogin;
  @override
  @JsonKey(ignore: true)
  _$$_$TicketAddTicketEventCopyWith<_$_$TicketAddTicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$TicketsInitialStateCopyWith<$Res> {
  factory _$$_$TicketsInitialStateCopyWith(_$_$TicketsInitialState value,
          $Res Function(_$_$TicketsInitialState) then) =
      __$$_$TicketsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$TicketsInitialStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_$TicketsInitialState>
    implements _$$_$TicketsInitialStateCopyWith<$Res> {
  __$$_$TicketsInitialStateCopyWithImpl(_$_$TicketsInitialState _value,
      $Res Function(_$_$TicketsInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$TicketsInitialState implements _$TicketsInitialState {
  const _$_$TicketsInitialState();

  @override
  String toString() {
    return 'TicketsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$TicketsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$TicketsInitialState implements TicketsState {
  const factory _$TicketsInitialState() = _$_$TicketsInitialState;
}

/// @nodoc
abstract class _$$_$TicketsErroredStateCopyWith<$Res> {
  factory _$$_$TicketsErroredStateCopyWith(_$_$TicketsErroredState value,
          $Res Function(_$_$TicketsErroredState) then) =
      __$$_$TicketsErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$TicketsErroredStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_$TicketsErroredState>
    implements _$$_$TicketsErroredStateCopyWith<$Res> {
  __$$_$TicketsErroredStateCopyWithImpl(_$_$TicketsErroredState _value,
      $Res Function(_$_$TicketsErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$TicketsErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$TicketsErroredState implements _$TicketsErroredState {
  const _$_$TicketsErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TicketsState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketsErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketsErroredStateCopyWith<_$_$TicketsErroredState> get copyWith =>
      __$$_$TicketsErroredStateCopyWithImpl<_$_$TicketsErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$TicketsErroredState implements TicketsState {
  const factory _$TicketsErroredState(final String error) =
      _$_$TicketsErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$TicketsErroredStateCopyWith<_$_$TicketsErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$TicketsLoadedStateCopyWith<$Res> {
  factory _$$_$TicketsLoadedStateCopyWith(_$_$TicketsLoadedState value,
          $Res Function(_$_$TicketsLoadedState) then) =
      __$$_$TicketsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TicketModel> loadedTickets});
}

/// @nodoc
class __$$_$TicketsLoadedStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_$TicketsLoadedState>
    implements _$$_$TicketsLoadedStateCopyWith<$Res> {
  __$$_$TicketsLoadedStateCopyWithImpl(_$_$TicketsLoadedState _value,
      $Res Function(_$_$TicketsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedTickets = null,
  }) {
    return _then(_$_$TicketsLoadedState(
      null == loadedTickets
          ? _value._loadedTickets
          : loadedTickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ));
  }
}

/// @nodoc

class _$_$TicketsLoadedState implements _$TicketsLoadedState {
  const _$_$TicketsLoadedState(final List<TicketModel> loadedTickets)
      : _loadedTickets = loadedTickets;

  final List<TicketModel> _loadedTickets;
  @override
  List<TicketModel> get loadedTickets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedTickets);
  }

  @override
  String toString() {
    return 'TicketsState.loaded(loadedTickets: $loadedTickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._loadedTickets, _loadedTickets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_loadedTickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketsLoadedStateCopyWith<_$_$TicketsLoadedState> get copyWith =>
      __$$_$TicketsLoadedStateCopyWithImpl<_$_$TicketsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) {
    return loaded(loadedTickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) {
    return loaded?.call(loadedTickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadedTickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$TicketsLoadedState implements TicketsState {
  const factory _$TicketsLoadedState(final List<TicketModel> loadedTickets) =
      _$_$TicketsLoadedState;

  List<TicketModel> get loadedTickets;
  @JsonKey(ignore: true)
  _$$_$TicketsLoadedStateCopyWith<_$_$TicketsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$TicketsAddedStateCopyWith<$Res> {
  factory _$$_$TicketsAddedStateCopyWith(_$_$TicketsAddedState value,
          $Res Function(_$_$TicketsAddedState) then) =
      __$$_$TicketsAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketModel loadedTicket});
}

/// @nodoc
class __$$_$TicketsAddedStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_$TicketsAddedState>
    implements _$$_$TicketsAddedStateCopyWith<$Res> {
  __$$_$TicketsAddedStateCopyWithImpl(
      _$_$TicketsAddedState _value, $Res Function(_$_$TicketsAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedTicket = null,
  }) {
    return _then(_$_$TicketsAddedState(
      null == loadedTicket
          ? _value.loadedTicket
          : loadedTicket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }
}

/// @nodoc

class _$_$TicketsAddedState implements _$TicketsAddedState {
  const _$_$TicketsAddedState(this.loadedTicket);

  @override
  final TicketModel loadedTicket;

  @override
  String toString() {
    return 'TicketsState.added(loadedTicket: $loadedTicket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketsAddedState &&
            (identical(other.loadedTicket, loadedTicket) ||
                other.loadedTicket == loadedTicket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadedTicket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketsAddedStateCopyWith<_$_$TicketsAddedState> get copyWith =>
      __$$_$TicketsAddedStateCopyWithImpl<_$_$TicketsAddedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) {
    return added(loadedTicket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) {
    return added?.call(loadedTicket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(loadedTicket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _$TicketsAddedState implements TicketsState {
  const factory _$TicketsAddedState(final TicketModel loadedTicket) =
      _$_$TicketsAddedState;

  TicketModel get loadedTicket;
  @JsonKey(ignore: true)
  _$$_$TicketsAddedStateCopyWith<_$_$TicketsAddedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$TicketsLoadingStateCopyWith<$Res> {
  factory _$$_$TicketsLoadingStateCopyWith(_$_$TicketsLoadingState value,
          $Res Function(_$_$TicketsLoadingState) then) =
      __$$_$TicketsLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMass});
}

/// @nodoc
class __$$_$TicketsLoadingStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_$TicketsLoadingState>
    implements _$$_$TicketsLoadingStateCopyWith<$Res> {
  __$$_$TicketsLoadingStateCopyWithImpl(_$_$TicketsLoadingState _value,
      $Res Function(_$_$TicketsLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMass = null,
  }) {
    return _then(_$_$TicketsLoadingState(
      null == isMass
          ? _value.isMass
          : isMass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$TicketsLoadingState implements _$TicketsLoadingState {
  const _$_$TicketsLoadingState(this.isMass);

  @override
  final bool isMass;

  @override
  String toString() {
    return 'TicketsState.loading(isMass: $isMass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$TicketsLoadingState &&
            (identical(other.isMass, isMass) || other.isMass == isMass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TicketsLoadingStateCopyWith<_$_$TicketsLoadingState> get copyWith =>
      __$$_$TicketsLoadingStateCopyWithImpl<_$_$TicketsLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(List<TicketModel> loadedTickets) loaded,
    required TResult Function(TicketModel loadedTicket) added,
    required TResult Function(bool isMass) loading,
  }) {
    return loading(isMass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(List<TicketModel> loadedTickets)? loaded,
    TResult? Function(TicketModel loadedTicket)? added,
    TResult? Function(bool isMass)? loading,
  }) {
    return loading?.call(isMass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(List<TicketModel> loadedTickets)? loaded,
    TResult Function(TicketModel loadedTicket)? added,
    TResult Function(bool isMass)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isMass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$TicketsInitialState value) initial,
    required TResult Function(_$TicketsErroredState value) errored,
    required TResult Function(_$TicketsLoadedState value) loaded,
    required TResult Function(_$TicketsAddedState value) added,
    required TResult Function(_$TicketsLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$TicketsInitialState value)? initial,
    TResult? Function(_$TicketsErroredState value)? errored,
    TResult? Function(_$TicketsLoadedState value)? loaded,
    TResult? Function(_$TicketsAddedState value)? added,
    TResult? Function(_$TicketsLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$TicketsInitialState value)? initial,
    TResult Function(_$TicketsErroredState value)? errored,
    TResult Function(_$TicketsLoadedState value)? loaded,
    TResult Function(_$TicketsAddedState value)? added,
    TResult Function(_$TicketsLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$TicketsLoadingState implements TicketsState {
  const factory _$TicketsLoadingState(final bool isMass) =
      _$_$TicketsLoadingState;

  bool get isMass;
  @JsonKey(ignore: true)
  _$$_$TicketsLoadingStateCopyWith<_$_$TicketsLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
