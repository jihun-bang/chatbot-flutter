import 'package:cloud_firestore/cloud_firestore.dart';

DateTime? dateTimeFromTimestamp(Timestamp? timestamp) {
  return timestamp?.toDate() ?? DateTime.now();
}

DateTime? dateTimeFromTimestampWithNull(Timestamp? timestamp) {
  return timestamp?.toDate();
}
