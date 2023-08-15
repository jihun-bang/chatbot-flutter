// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<MessageModel> messages) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<MessageModel> messages)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<MessageModel> messages)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(CompleteState value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(CompleteState value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(CompleteState value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  _$LoadingState();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<MessageModel> messages) complete,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<MessageModel> messages)? complete,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<MessageModel> messages)? complete,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(CompleteState value) complete,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(CompleteState value)? complete,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(CompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ChatState {
  factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorState implements ErrorState {
  _$ErrorState();

  @override
  String toString() {
    return 'ChatState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<MessageModel> messages) complete,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<MessageModel> messages)? complete,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<MessageModel> messages)? complete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(CompleteState value) complete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(CompleteState value)? complete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(CompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ChatState {
  factory ErrorState() = _$ErrorState;
}

/// @nodoc
abstract class _$$CompleteStateCopyWith<$Res> {
  factory _$$CompleteStateCopyWith(
          _$CompleteState value, $Res Function(_$CompleteState) then) =
      __$$CompleteStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$CompleteStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$CompleteState>
    implements _$$CompleteStateCopyWith<$Res> {
  __$$CompleteStateCopyWithImpl(
      _$CompleteState _value, $Res Function(_$CompleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$CompleteState(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$CompleteState implements CompleteState {
  _$CompleteState({required final List<MessageModel> messages})
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.complete(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteState &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteStateCopyWith<_$CompleteState> get copyWith =>
      __$$CompleteStateCopyWithImpl<_$CompleteState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<MessageModel> messages) complete,
  }) {
    return complete(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<MessageModel> messages)? complete,
  }) {
    return complete?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<MessageModel> messages)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(CompleteState value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(CompleteState value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(CompleteState value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteState implements ChatState {
  factory CompleteState({required final List<MessageModel> messages}) =
      _$CompleteState;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  _$$CompleteStateCopyWith<_$CompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatSideEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sending value) sending,
    required TResult Function(SendError value) error,
    required TResult Function(SendComplete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sending value)? sending,
    TResult? Function(SendError value)? error,
    TResult? Function(SendComplete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sending value)? sending,
    TResult Function(SendError value)? error,
    TResult Function(SendComplete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSideEffectCopyWith<$Res> {
  factory $ChatSideEffectCopyWith(
          ChatSideEffect value, $Res Function(ChatSideEffect) then) =
      _$ChatSideEffectCopyWithImpl<$Res, ChatSideEffect>;
}

/// @nodoc
class _$ChatSideEffectCopyWithImpl<$Res, $Val extends ChatSideEffect>
    implements $ChatSideEffectCopyWith<$Res> {
  _$ChatSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendingCopyWith<$Res> {
  factory _$$SendingCopyWith(_$Sending value, $Res Function(_$Sending) then) =
      __$$SendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingCopyWithImpl<$Res>
    extends _$ChatSideEffectCopyWithImpl<$Res, _$Sending>
    implements _$$SendingCopyWith<$Res> {
  __$$SendingCopyWithImpl(_$Sending _value, $Res Function(_$Sending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Sending implements Sending {
  _$Sending();

  @override
  String toString() {
    return 'ChatSideEffect.sending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Sending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() complete,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? complete,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sending value) sending,
    required TResult Function(SendError value) error,
    required TResult Function(SendComplete value) complete,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sending value)? sending,
    TResult? Function(SendError value)? error,
    TResult? Function(SendComplete value)? complete,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sending value)? sending,
    TResult Function(SendError value)? error,
    TResult Function(SendComplete value)? complete,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class Sending implements ChatSideEffect {
  factory Sending() = _$Sending;
}

/// @nodoc
abstract class _$$SendErrorCopyWith<$Res> {
  factory _$$SendErrorCopyWith(
          _$SendError value, $Res Function(_$SendError) then) =
      __$$SendErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendErrorCopyWithImpl<$Res>
    extends _$ChatSideEffectCopyWithImpl<$Res, _$SendError>
    implements _$$SendErrorCopyWith<$Res> {
  __$$SendErrorCopyWithImpl(
      _$SendError _value, $Res Function(_$SendError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendError implements SendError {
  _$SendError();

  @override
  String toString() {
    return 'ChatSideEffect.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() complete,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? complete,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sending value) sending,
    required TResult Function(SendError value) error,
    required TResult Function(SendComplete value) complete,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sending value)? sending,
    TResult? Function(SendError value)? error,
    TResult? Function(SendComplete value)? complete,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sending value)? sending,
    TResult Function(SendError value)? error,
    TResult Function(SendComplete value)? complete,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendError implements ChatSideEffect {
  factory SendError() = _$SendError;
}

/// @nodoc
abstract class _$$SendCompleteCopyWith<$Res> {
  factory _$$SendCompleteCopyWith(
          _$SendComplete value, $Res Function(_$SendComplete) then) =
      __$$SendCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCompleteCopyWithImpl<$Res>
    extends _$ChatSideEffectCopyWithImpl<$Res, _$SendComplete>
    implements _$$SendCompleteCopyWith<$Res> {
  __$$SendCompleteCopyWithImpl(
      _$SendComplete _value, $Res Function(_$SendComplete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendComplete implements SendComplete {
  _$SendComplete();

  @override
  String toString() {
    return 'ChatSideEffect.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sending value) sending,
    required TResult Function(SendError value) error,
    required TResult Function(SendComplete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sending value)? sending,
    TResult? Function(SendError value)? error,
    TResult? Function(SendComplete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sending value)? sending,
    TResult Function(SendError value)? error,
    TResult Function(SendComplete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class SendComplete implements ChatSideEffect {
  factory SendComplete() = _$SendComplete;
}
