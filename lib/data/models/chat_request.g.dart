// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'chat_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatRequestModelCWProxy {
  ChatRequestModel id(String id);

  ChatRequestModel userId(String userId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatRequestModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatRequestModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatRequestModel call({
    String? id,
    String? userId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChatRequestModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChatRequestModel.copyWith.fieldName(...)`
class _$ChatRequestModelCWProxyImpl implements _$ChatRequestModelCWProxy {
  const _$ChatRequestModelCWProxyImpl(this._value);

  final ChatRequestModel _value;

  @override
  ChatRequestModel id(String id) => this(id: id);

  @override
  ChatRequestModel userId(String userId) => this(userId: userId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatRequestModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatRequestModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatRequestModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
  }) {
    return ChatRequestModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
    );
  }
}

extension $ChatRequestModelCopyWith on ChatRequestModel {
  /// Returns a callable class that can be used as follows: `instanceOfChatRequestModel.copyWith(...)` or like so:`instanceOfChatRequestModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatRequestModelCWProxy get copyWith => _$ChatRequestModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRequestModel _$ChatRequestModelFromJson(Map<String, dynamic> json) =>
    ChatRequestModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
    );

const _$ChatRequestModelFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
};

Map<String, dynamic> _$ChatRequestModelToJson(ChatRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
    };
