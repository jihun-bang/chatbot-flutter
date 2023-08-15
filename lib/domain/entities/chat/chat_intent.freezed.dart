// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) send,
    required TResult Function() exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? send,
    TResult? Function()? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? send,
    TResult Function()? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Send value) send,
    required TResult Function(Exit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Send value)? send,
    TResult? Function(Exit value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Send value)? send,
    TResult Function(Exit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatIntentCopyWith<$Res> {
  factory $ChatIntentCopyWith(
          ChatIntent value, $Res Function(ChatIntent) then) =
      _$ChatIntentCopyWithImpl<$Res, ChatIntent>;
}

/// @nodoc
class _$ChatIntentCopyWithImpl<$Res, $Val extends ChatIntent>
    implements $ChatIntentCopyWith<$Res> {
  _$ChatIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendCopyWith<$Res> {
  factory _$$SendCopyWith(_$Send value, $Res Function(_$Send) then) =
      __$$SendCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendCopyWithImpl<$Res> extends _$ChatIntentCopyWithImpl<$Res, _$Send>
    implements _$$SendCopyWith<$Res> {
  __$$SendCopyWithImpl(_$Send _value, $Res Function(_$Send) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Send(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Send implements Send {
  _$Send({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatIntent.send(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Send &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCopyWith<_$Send> get copyWith =>
      __$$SendCopyWithImpl<_$Send>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) send,
    required TResult Function() exit,
  }) {
    return send(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? send,
    TResult? Function()? exit,
  }) {
    return send?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? send,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Send value) send,
    required TResult Function(Exit value) exit,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Send value)? send,
    TResult? Function(Exit value)? exit,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Send value)? send,
    TResult Function(Exit value)? exit,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class Send implements ChatIntent {
  factory Send({required final String message}) = _$Send;

  String get message;
  @JsonKey(ignore: true)
  _$$SendCopyWith<_$Send> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitCopyWith<$Res> {
  factory _$$ExitCopyWith(_$Exit value, $Res Function(_$Exit) then) =
      __$$ExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitCopyWithImpl<$Res> extends _$ChatIntentCopyWithImpl<$Res, _$Exit>
    implements _$$ExitCopyWith<$Res> {
  __$$ExitCopyWithImpl(_$Exit _value, $Res Function(_$Exit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Exit implements Exit {
  _$Exit();

  @override
  String toString() {
    return 'ChatIntent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Exit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) send,
    required TResult Function() exit,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? send,
    TResult? Function()? exit,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? send,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Send value) send,
    required TResult Function(Exit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Send value)? send,
    TResult? Function(Exit value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Send value)? send,
    TResult Function(Exit value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class Exit implements ChatIntent {
  factory Exit() = _$Exit;
}
