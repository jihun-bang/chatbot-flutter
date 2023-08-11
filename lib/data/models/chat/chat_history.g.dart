// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'chat_history.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatHistoryModelCWProxy {
  ChatHistoryModel id(String id);

  ChatHistoryModel userId(String userId);

  ChatHistoryModel messages(List<MessageModel> messages);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatHistoryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatHistoryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatHistoryModel call({
    String? id,
    String? userId,
    List<MessageModel>? messages,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChatHistoryModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChatHistoryModel.copyWith.fieldName(...)`
class _$ChatHistoryModelCWProxyImpl implements _$ChatHistoryModelCWProxy {
  const _$ChatHistoryModelCWProxyImpl(this._value);

  final ChatHistoryModel _value;

  @override
  ChatHistoryModel id(String id) => this(id: id);

  @override
  ChatHistoryModel userId(String userId) => this(userId: userId);

  @override
  ChatHistoryModel messages(List<MessageModel> messages) =>
      this(messages: messages);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatHistoryModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatHistoryModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatHistoryModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return ChatHistoryModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      messages: messages == const $CopyWithPlaceholder() || messages == null
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<MessageModel>,
    );
  }
}

extension $ChatHistoryModelCopyWith on ChatHistoryModel {
  /// Returns a callable class that can be used as follows: `instanceOfChatHistoryModel.copyWith(...)` or like so:`instanceOfChatHistoryModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatHistoryModelCWProxy get copyWith => _$ChatHistoryModelCWProxyImpl(this);
}

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MessageModelCollectionReference
    implements
        MessageModelQuery,
        FirestoreCollectionReference<MessageModel, MessageModelQuerySnapshot> {
  factory MessageModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MessageModelCollectionReference;

  static MessageModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MessageModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    MessageModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<MessageModel> get reference;

  @override
  MessageModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MessageModelDocumentReference> add(MessageModel value);
}

class _$MessageModelCollectionReference extends _$MessageModelQuery
    implements MessageModelCollectionReference {
  factory _$MessageModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MessageModelCollectionReference._(
      firestore.collection('messages').withConverter(
            fromFirestore: MessageModelCollectionReference.fromFirestore,
            toFirestore: MessageModelCollectionReference.toFirestore,
          ),
    );
  }

  _$MessageModelCollectionReference._(
    CollectionReference<MessageModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MessageModel> get reference =>
      super.reference as CollectionReference<MessageModel>;

  @override
  MessageModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MessageModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MessageModelDocumentReference> add(MessageModel value) {
    return reference
        .add(value)
        .then((ref) => MessageModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MessageModelDocumentReference extends FirestoreDocumentReference<
    MessageModel, MessageModelDocumentSnapshot> {
  factory MessageModelDocumentReference(
          DocumentReference<MessageModel> reference) =
      _$MessageModelDocumentReference;

  DocumentReference<MessageModel> get reference;

  /// A reference to the [MessageModelCollectionReference] containing this document.
  MessageModelCollectionReference get parent {
    return _$MessageModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MessageModelDocumentSnapshot> snapshots();

  @override
  Future<MessageModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String createdBy,
    FieldValue createdByFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String createdBy,
    FieldValue createdByFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
  });
}

class _$MessageModelDocumentReference extends FirestoreDocumentReference<
    MessageModel,
    MessageModelDocumentSnapshot> implements MessageModelDocumentReference {
  _$MessageModelDocumentReference(this.reference);

  @override
  final DocumentReference<MessageModel> reference;

  /// A reference to the [MessageModelCollectionReference] containing this document.
  MessageModelCollectionReference get parent {
    return _$MessageModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MessageModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MessageModelDocumentSnapshot._);
  }

  @override
  Future<MessageModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MessageModelDocumentSnapshot._);
  }

  @override
  Future<MessageModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MessageModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? createdBy = _sentinel,
    FieldValue? createdByFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) async {
    assert(
      createdBy == _sentinel || createdByFieldValue == null,
      "Cannot specify both createdBy and createdByFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (createdBy != _sentinel)
        _$MessageModelFieldMap['createdBy']!: createdBy as String,
      if (createdByFieldValue != null)
        _$MessageModelFieldMap['createdBy']!: createdByFieldValue,
      if (createdAt != _sentinel)
        _$MessageModelFieldMap['createdAt']!: createdAt as DateTime?,
      if (createdAtFieldValue != null)
        _$MessageModelFieldMap['createdAt']!: createdAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? createdBy = _sentinel,
    FieldValue? createdByFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) {
    assert(
      createdBy == _sentinel || createdByFieldValue == null,
      "Cannot specify both createdBy and createdByFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (createdBy != _sentinel)
        _$MessageModelFieldMap['createdBy']!: createdBy as String,
      if (createdByFieldValue != null)
        _$MessageModelFieldMap['createdBy']!: createdByFieldValue,
      if (createdAt != _sentinel)
        _$MessageModelFieldMap['createdAt']!: createdAt as DateTime?,
      if (createdAtFieldValue != null)
        _$MessageModelFieldMap['createdAt']!: createdAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MessageModelQuery
    implements QueryReference<MessageModel, MessageModelQuerySnapshot> {
  @override
  MessageModelQuery limit(int limit);

  @override
  MessageModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MessageModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MessageModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MessageModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageModelQuery whereCreatedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });

  MessageModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  });

  MessageModelQuery orderByCreatedBy({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  });

  MessageModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  });
}

class _$MessageModelQuery
    extends QueryReference<MessageModel, MessageModelQuerySnapshot>
    implements MessageModelQuery {
  _$MessageModelQuery(
    this._collection, {
    required Query<MessageModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MessageModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(MessageModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MessageModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MessageModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MessageModelQuery limit(int limit) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageModelQuery limitToLast(int limit) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MessageModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageModelQuery whereCreatedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageModelFieldMap['createdBy']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageModelQuery orderByCreatedBy({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageModelFieldMap['createdBy']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageModelDocumentSnapshot? startAtDocument,
    MessageModelDocumentSnapshot? endAtDocument,
    MessageModelDocumentSnapshot? endBeforeDocument,
    MessageModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageModelFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MessageModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<MessageModel> {
  MessageModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MessageModel> snapshot;

  @override
  MessageModelDocumentReference get reference {
    return MessageModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MessageModel? data;
}

class MessageModelQuerySnapshot extends FirestoreQuerySnapshot<MessageModel,
    MessageModelQueryDocumentSnapshot> {
  MessageModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MessageModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MessageModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(MessageModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MessageModelDocumentSnapshot._,
      );
    }).toList();

    return MessageModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MessageModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MessageModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MessageModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MessageModel> snapshot;

  @override
  final List<MessageModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MessageModelDocumentSnapshot>> docChanges;
}

class MessageModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MessageModel>
    implements MessageModelDocumentSnapshot {
  MessageModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MessageModel> snapshot;

  @override
  final MessageModel data;

  @override
  MessageModelDocumentReference get reference {
    return MessageModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ChatHistoryModelCollectionReference
    implements
        ChatHistoryModelQuery,
        FirestoreCollectionReference<ChatHistoryModel,
            ChatHistoryModelQuerySnapshot> {
  factory ChatHistoryModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ChatHistoryModelCollectionReference;

  static ChatHistoryModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ChatHistoryModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ChatHistoryModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<ChatHistoryModel> get reference;

  @override
  ChatHistoryModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ChatHistoryModelDocumentReference> add(ChatHistoryModel value);
}

class _$ChatHistoryModelCollectionReference extends _$ChatHistoryModelQuery
    implements ChatHistoryModelCollectionReference {
  factory _$ChatHistoryModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ChatHistoryModelCollectionReference._(
      firestore.collection('chat_history').withConverter(
            fromFirestore: ChatHistoryModelCollectionReference.fromFirestore,
            toFirestore: ChatHistoryModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ChatHistoryModelCollectionReference._(
    CollectionReference<ChatHistoryModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ChatHistoryModel> get reference =>
      super.reference as CollectionReference<ChatHistoryModel>;

  @override
  ChatHistoryModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ChatHistoryModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ChatHistoryModelDocumentReference> add(ChatHistoryModel value) {
    return reference
        .add(value)
        .then((ref) => ChatHistoryModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChatHistoryModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ChatHistoryModelDocumentReference
    extends FirestoreDocumentReference<ChatHistoryModel,
        ChatHistoryModelDocumentSnapshot> {
  factory ChatHistoryModelDocumentReference(
          DocumentReference<ChatHistoryModel> reference) =
      _$ChatHistoryModelDocumentReference;

  DocumentReference<ChatHistoryModel> get reference;

  /// A reference to the [ChatHistoryModelCollectionReference] containing this document.
  ChatHistoryModelCollectionReference get parent {
    return _$ChatHistoryModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ChatHistoryModelDocumentSnapshot> snapshots();

  @override
  Future<ChatHistoryModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String userId,
    FieldValue userIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String userId,
    FieldValue userIdFieldValue,
  });
}

class _$ChatHistoryModelDocumentReference extends FirestoreDocumentReference<
        ChatHistoryModel, ChatHistoryModelDocumentSnapshot>
    implements ChatHistoryModelDocumentReference {
  _$ChatHistoryModelDocumentReference(this.reference);

  @override
  final DocumentReference<ChatHistoryModel> reference;

  /// A reference to the [ChatHistoryModelCollectionReference] containing this document.
  ChatHistoryModelCollectionReference get parent {
    return _$ChatHistoryModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ChatHistoryModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ChatHistoryModelDocumentSnapshot._);
  }

  @override
  Future<ChatHistoryModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ChatHistoryModelDocumentSnapshot._);
  }

  @override
  Future<ChatHistoryModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ChatHistoryModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) async {
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (userId != _sentinel)
        _$ChatHistoryModelFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$ChatHistoryModelFieldMap['userId']!: userIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) {
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (userId != _sentinel)
        _$ChatHistoryModelFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$ChatHistoryModelFieldMap['userId']!: userIdFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatHistoryModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ChatHistoryModelQuery
    implements QueryReference<ChatHistoryModel, ChatHistoryModelQuerySnapshot> {
  @override
  ChatHistoryModelQuery limit(int limit);

  @override
  ChatHistoryModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ChatHistoryModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ChatHistoryModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ChatHistoryModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ChatHistoryModelQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  ChatHistoryModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  });

  ChatHistoryModelQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ChatHistoryModelQuery
    extends QueryReference<ChatHistoryModel, ChatHistoryModelQuerySnapshot>
    implements ChatHistoryModelQuery {
  _$ChatHistoryModelQuery(
    this._collection, {
    required Query<ChatHistoryModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ChatHistoryModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ChatHistoryModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ChatHistoryModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ChatHistoryModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ChatHistoryModelQuery limit(int limit) {
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ChatHistoryModelQuery limitToLast(int limit) {
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ChatHistoryModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChatHistoryModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChatHistoryModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChatHistoryModelQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ChatHistoryModelFieldMap['userId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ChatHistoryModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ChatHistoryModelQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChatHistoryModelDocumentSnapshot? startAtDocument,
    ChatHistoryModelDocumentSnapshot? endAtDocument,
    ChatHistoryModelDocumentSnapshot? endBeforeDocument,
    ChatHistoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ChatHistoryModelFieldMap['userId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ChatHistoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChatHistoryModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ChatHistoryModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ChatHistoryModel> {
  ChatHistoryModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ChatHistoryModel> snapshot;

  @override
  ChatHistoryModelDocumentReference get reference {
    return ChatHistoryModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ChatHistoryModel? data;
}

class ChatHistoryModelQuerySnapshot extends FirestoreQuerySnapshot<
    ChatHistoryModel, ChatHistoryModelQueryDocumentSnapshot> {
  ChatHistoryModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ChatHistoryModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ChatHistoryModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ChatHistoryModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ChatHistoryModelDocumentSnapshot._,
      );
    }).toList();

    return ChatHistoryModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ChatHistoryModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ChatHistoryModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ChatHistoryModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ChatHistoryModel> snapshot;

  @override
  final List<ChatHistoryModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ChatHistoryModelDocumentSnapshot>>
      docChanges;
}

class ChatHistoryModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ChatHistoryModel>
    implements ChatHistoryModelDocumentSnapshot {
  ChatHistoryModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ChatHistoryModel> snapshot;

  @override
  final ChatHistoryModel data;

  @override
  ChatHistoryModelDocumentReference get reference {
    return ChatHistoryModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatHistoryModel _$ChatHistoryModelFromJson(Map<String, dynamic> json) =>
    ChatHistoryModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

const _$ChatHistoryModelFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
  'messages': 'messages',
};

Map<String, dynamic> _$ChatHistoryModelToJson(ChatHistoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      id: json['id'] as String,
      createdBy: json['created_by'] as String,
      data: MessageDataModel.fromJson(json['data'] as Map<String, dynamic>),
      createdAt: dateTimeFromTimestamp(json['created_at'] as Timestamp?),
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
    );

const _$MessageModelFieldMap = <String, String>{
  'id': 'id',
  'createdBy': 'created_by',
  'data': 'data',
  'createdAt': 'created_at',
  'type': 'type',
};

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_by': instance.createdBy,
      'data': instance.data.toJson(),
      'created_at': instance.createdAt?.toIso8601String(),
      'type': _$MessageTypeEnumMap[instance.type]!,
    };

const _$MessageTypeEnumMap = {
  MessageType.ai: 'ai',
  MessageType.human: 'human',
};

MessageDataModel _$MessageDataModelFromJson(Map<String, dynamic> json) =>
    MessageDataModel(
      additionalKwargs: json['additional_kwargs'] as Map<String, dynamic>,
      content: json['content'] as String,
    );

const _$MessageDataModelFieldMap = <String, String>{
  'additionalKwargs': 'additional_kwargs',
  'content': 'content',
};

Map<String, dynamic> _$MessageDataModelToJson(MessageDataModel instance) =>
    <String, dynamic>{
      'additional_kwargs': instance.additionalKwargs,
      'content': instance.content,
    };
