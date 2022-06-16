import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

class FirebaseService {
  final CollectionReference<Map<String, dynamic>> users =
      db.collection('users');

  final CollectionReference<Map<String, dynamic>> homeBanner =
      db.collection('homeBanner');
}
